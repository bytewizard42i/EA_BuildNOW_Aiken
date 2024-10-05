validator savings() {
    spend(redeemer, target OutputReference, tx:info: Transaction) 
    // eg spending a utxo. 
    // OutputReference is basically the identity of the utxo that we are consuming

    mint(target: PolicyId, tx_info:) 
    // eg minting native tokens

    withdraw() 
    // eg taking staking rewards

    publish() 
    // eg publishing a delegation certificate
    // governance actions

    vote()
    // eg voting on a proposal
    
    propose()
    // catch-all handler




}