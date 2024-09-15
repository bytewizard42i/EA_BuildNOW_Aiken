// Aiken is functional language, 

fn main() {
    let x = 5
    let y = 6
    let z = x + y
    x + y + z
}

// Aiken compiler can infer the types of the arguments and the return type
fn sum(x, y) {
    x + y
}

fn sum_explicit(x: Int, y: Int) -> Int {
    x + y
}

// Lets check that our functions work by testing them
test main_test() {
     main() == 22
}

test sum_test() {
    sum(5, 6) == 11
}

test sum_explicit_test() {
    sum_explicit(5, 6) == 11
}