// Create and test a function that...
// 1. Checks even or odd with if-else
// 2. Checks even or odd with when-is
// 3. compares prices vs payment and answer True if payment >= price, and False if not.

fn odd_even(x: Int) -> ByteArray {
  if x % 2 !== 0 {
    "Your selection was Odd"
  } else {
    "Your selection was Even"
  }
}

test odd_even_test() {
  even_odd(6) == "Your test result is even"
}

// **Creating the fn mod to be called later**

fn mod(x: Int, y: Int) -> Int {
  x % y
}

// **This fn calls mod and also returns a boolean**

fn modulus(x: Int, y: Int) -> Bool {
  let z = mod(x, y)
  let m = x % 2
  m == z
}

test modulus_test() {
  modulus(4, 2) == True
}

test mod_test() {
  mod(4, 2) == 0
}
