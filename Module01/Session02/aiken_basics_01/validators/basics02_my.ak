use aiken_basics/myFirstLib.{sum}

fn main(x: Int, y: Int) -> Int {
  let z = sum(x, y)
  x + y + z
}

fn sum(x: Int, y: Int) -> Int {
  x + y
}

test main_test() {
  main(5, 6) == 22
}

test sum_test() {
  sum(5, 6) == 11
}
