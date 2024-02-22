import FungibleToken from 0x05
import goa from 0x05

pub fun main(account: Address) {

    // Attempt to borrow PublicVault capability
    let publicVault: &goa.Vault{FungibleToken.Balance, FungibleToken.Receiver, goa.CollectionPublic}? =
        getAccount(account).getCapability(/public/Vault)
            .borrow<&goa.Vault{FungibleToken.Balance, FungibleToken.Receiver, goa.CollectionPublic}>()

    if (publicVault == nil) {
        // Create and link an empty vault if capability is not present
        let newVault <- goa.createEmptyVault()
        getAuthAccount(account).save(<-newVault, to: /storage/VaultStorage)
        getAuthAccount(account).link<&goa.Vault{FungibleToken.Balance, FungibleToken.Receiver, goa.CollectionPublic}>(
            /public/Vault,
            target: /storage/VaultStorage
        )
        log("Empty vault created")
        
        // Borrow the vault capability again to display its balance
        let retrievedVault: &goa.Vault{FungibleToken.Balance}? =
            getAccount(account).getCapability(/public/Vault)
                .borrow<&goa.Vault{FungibleToken.Balance}>()
        log(retrievedVault?.balance)
    } else {
        log("Vault already exists and is properly linked")
        
        // Borrow the vault capability for further checks
        let checkVault: &goa.Vault{FungibleToken.Balance, FungibleToken.Receiver, goa.CollectionPublic} =
            getAccount(account).getCapability(/public/Vault)
                .borrow<&goa.Vault{FungibleToken.Balance, FungibleToken.Receiver, goa.CollectionPublic}>()
                ?? panic("Vault capability not found")
        
        // Check if the vault's UUID is in the list of vaults
        if goa.vaults.contains(checkVault.uuid) {
            log(publicVault?.balance)
            log("This is a AlpToken vault")
        } else {
            log("This is not a AlpToken vault")
        }
    }
}