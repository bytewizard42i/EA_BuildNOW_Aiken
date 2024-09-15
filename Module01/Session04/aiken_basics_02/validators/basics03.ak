// Anonymous functions

fn main(x: Int, y: Int) -> Int {
    let z = fn(x, y) { x + y}
    z(x, y)
}

test main_testset1() {
    main(3,4) == 7      
}

// FlowControl - blocks
// A function can contain a sequence of expressions. However, any expression but the last one must be assigned to a variable using the let keyword

fn blocks() {
    let x: Int = {
                    // let a = 11 + 22             // Warning for unused identifier
                    // True                        // Implicity discarded
                    // let c = "Howdy"
                    33    
                 }
    x
}

fn  usual_suspect(a: Bool, x: Int, y: Int ) -> Int {
    if a {
        x + y
    } else {
        x - y
    }
}

// Pattern matching with `when *expression* is` 

fn patterns(i_can_only_count_2_4 x: Int) -> Int {
    when x is {
        1 -> 5
        2 -> 6
        3 -> 7
        4 -> 8
        _ -> fail

    }
}  



test blocks_testset1() {
    blocks() == 33      
}

test usual_suspect_testset1() {
    usual_suspect(True, 3, 4) == 7  &&  usual_suspect(False, 3, 4) == -1      
}

test patterns_testset1() {
    patterns(1) == 5 && patterns(2) == 6 && patterns(3) == 7 && patterns(4) == 8
}   