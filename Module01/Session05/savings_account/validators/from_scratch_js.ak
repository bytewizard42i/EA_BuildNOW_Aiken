validator savings() {
    // all the handlers get 

    spend(redeemer, target: OutputReference, tx:info: Transaction) 
    // eg spending a utxo. 
    // OutputReference is basically the identity of the utxo that we are consuming

    mint(target: PolicyId, tx_info: Transaction) 
    // target is the policy id of the token that we are minting
    // eg minting native tokens

    withdraw(target: Acocunt tx_info: Transaction) 
    // eg taking staking rewards

    publish(target: Certification tx_info: Transaction) 
    // eg publishing a delegation certificate
    // governance actions

    vote(target: Voter, tx_info: Transaction)
    // eg voting on a proposal

    propose(target: ProposalProceeduretx_info: Transaction)
    // catch-all handler




}