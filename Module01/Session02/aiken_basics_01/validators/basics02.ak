// Its good practice to be explicit about your types

// We can use variables and other functions inside functions
fn main(x: Int, y: Int) -> Int {
    let z = sum(x, y)
    x + y + z
}

fn sum(x: Int, y: Int) -> Int {
    x + y
}

test sum_test() {
    sum(5, 6) == 11
}
test main_test() {
    main(5, 6) == 22
}