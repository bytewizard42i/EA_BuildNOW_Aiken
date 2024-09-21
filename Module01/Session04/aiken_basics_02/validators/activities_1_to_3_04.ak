// Create and test a function that...
// 1. Checks even or odd with if-else
// 2. Checks even or odd with when-is
// 3. compares prices vs payment and answer True if payment >= price, and False if not.

// Lets make a constant for 2 called parity_divisor

const parity_divisor = 2

// making my first function to check if a number is even or odd

fn odd_even(x: Int) -> ByteArray {
  if x % parity_divisor != 0 {
    "Your test result was Odd"
  } else {
    "Your test result was Even"
  }
}

// ^^This is a test for the odd_even function^^
test odd_even_test_odd() {
  odd_even(7) == "Your test result was Odd"
}

// ^^This is a test for the odd_even function^^
test odd_even_test_even() {
  odd_even(6) == "Your test result was Even"
}

// **Creating the fn mod to be called later, this guy returns and integer**

fn mod(x: Int, y: Int) -> Int {
  x % y
}

// **This fn calls mod and also returns a boolean**

fn modulus(x: Int, y: Int) -> Bool {
  let z = mod(x, y)
  let m = x % 2
  m == z
}

//  ^^ This is a test for the mod function it should be first I think^^

test mod_test() {
  mod(4, 2) == 0
}

//  ^^ This is a test for the modulus function ^^

test modulus_test() {
  modulus(4, 2) == True
}
