validator always_succeeds {
  spend(_datum: Option<Data>, _redeemer: Data, _output_reference: Data, _context: Data) {
    True
  }
}

test always_successfull() {
   always_succeeds.spend(None,0,0,0) == True
}
