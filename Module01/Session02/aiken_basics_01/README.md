
## I. Our First Project

### Create your first project
#### Naming in the naming convention organization / repository
```bash
aiken new bobs/aiken_basics
```

#### You can see the aiken project scafolded

- `lib` folder
- `validators` folder
- `aiken.toml`

#### Our first `contract rules` aka `validator` 
```glean
validator always_succeeds {
  spend(_datum: Option<Data>, _redeemer: Data, _output_reference: Data, _context: Data) {
    True
  }
}
```



#### Add our firts validator's test

```glean
test always_successfull() {
   always_succeeds.spend(None,0,0,0) == True
}
```

```bash
aiken check
```

```bash
aiken build
```


## II. Hands-on activities

- Activity 001 - Create the substraction (-) function and test it 
- Activity 002 - Create the multiplication (*) function and test it 
- Activity 003 - Create the division (/) function and test it
- Activity 004 - Modify the main function that uses the sum function and the new functions created in the previous practices and test it

