// 
// 
//                *First set of activities*
// - Activity 001 - Create the substraction (-) function and test it 
// - Activity 002 - Create the multiplication (*) function and test it 
// - Activity 003 - Create the division (/) function and test it
// - Activity 004 - Modify the main function that uses the sum function and the new functions created in the previous practices and test it

fn subtract(x: Int, y: Int) -> Int {
  x - y
}

test test_subtract() {
  subtract(21, 22) == -1
}

// subtract_test ok

fn multiply(x: Int, y: Int) -> Int {
  x * y
}

test test_multiply() {
  multiply(3, 4) == 12
}

fn divide(x: Int, y: Int) -> Int {
  x / y
}

test test_divide() {
  divide(12, 4) == 3
}
