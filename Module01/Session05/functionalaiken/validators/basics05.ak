// ## Constants and Types

// ## Ints

const pi: Int= 314159265359

fn circleArea(radius: Int) -> Int {
    pi * radius * radius
}

fn circleCircumference(radius: Int) -> Int {
    2 * pi * radius
}

// ## Bools

const failed_answer: Bool = False

fn da_question(da_answer: Bool) -> Bool {
    if da_answer {
        True
    } else {
        failed_answer
    }   
}

// ## ByteArray

fn even_or_odd_if(x: Int) -> ByteArray {
    if x % 2 == 0 {
        "even"
    } else {
        "odd"
    }
}

// ## Lists

const list_of_tokens = ["Sundae","Meld","Iagon","Minswap"] 

const tokesn_n_ada = ["Ada", ..list_of_tokens]


// ## Tuples

const my_mega_super_tuple = (1,"two",3)
const just_a_tuple = (5,"six")

// ## Pairs

// const value = Pair("Sundae",100)


// ## Tests




test area_test_set4() {
    circleArea(10) == 31415926535900
}

test circumference_test_set4() {
    circleCircumference(10) == 6283185307180
}