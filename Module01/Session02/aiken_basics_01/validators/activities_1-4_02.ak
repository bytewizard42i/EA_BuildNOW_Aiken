// Create and test a function that...
// 1. Checks even or odd with if-else
// 2. Checks even or odd with when-is
// 3. compares prices vs payment and answer True if payment >= price, and False if not.

fn even_odd(x: Int) -> ByteArray {
  if x % 2 == 0 {
    "even"
  } else {
    "Odd"
  }
}

test even_odd_test() {
  even_odd(6) == "even"
}

fn mod(x: Int, y: Int) -> Int {
  x % y
}

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
