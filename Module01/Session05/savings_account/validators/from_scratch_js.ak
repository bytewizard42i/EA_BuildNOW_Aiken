validator savings() {
    // all the handlers get 'tx_info: Transaction' as an argument

    spend(datum: Option<Data>, redeemer: Data, target: OutputReference, tx:info: Transaction) 
    // eg spending a utxo. 
    // OutputReference is basically the identity of the utxo that we are consuming

    mint(redeemer: Data, target: PolicyId, tx_info: Transaction) 
    // target is the policy id of the token that we are minting
    // eg minting native tokens

    // withdraw(redeemer: Data, target: Acocunt tx_info: Transaction) 
    // // eg taking staking rewards

    // publish(redeemer: Data, target: Certification tx_info: Transaction) 
    // // eg publishing a delegation certificate
    // // governance actions

    // vote(redeemer: Data, target: Voter, tx_info: Transaction)
    // // eg voting on a proposal

    // propose(redeemer: Data, target: ProposalProceeduretx_info: Transaction)
    // // catch-all handler




}