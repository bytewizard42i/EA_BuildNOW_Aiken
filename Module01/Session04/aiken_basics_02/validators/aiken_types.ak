const pi: Int= 314159265359

fn circleArea(radius: Int) -> Int {
    pi * radius * radius
}

fn circleCircumference(radius: Int) -> Int {
    2 * pi * radius
}

test area_test_set4() {
    circleArea(10) == 31415926535900
}

test circumference_test_set4() {
    circleCircumference(10) == 6283185307180
}