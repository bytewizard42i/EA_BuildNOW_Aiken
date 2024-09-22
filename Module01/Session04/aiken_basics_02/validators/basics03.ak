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
                    let a = 11
                    //True
                    let b = 22
                    let c = a + b              // Warning for unused identifier
                    c                       
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

fn ooe_if(x: Int) -> ByteArray {
    if x % 2 == 0 {
        "Even"
    } else {
        "Odd"
    }
}

fn ooe_wi(x: Int) -> ByteArray {
    when x % 2 is {
         0 -> "Even"
         1 -> "Odd"
         _ -> fail
    }
}

fn payment_price(payment: Int, price: Int) -> Bool {
  if payment >= price {
    True
  } else {
    False
  }
}

test payment_price_test_set3() {
    payment_price(100, 50) == True && payment_price(100, 150) == False
}


test ooe_wi_test_set2() {
    ooe_wi(3) == "Odd" && ooe_wi(4) == "Even"     
}

test ooe_if_test_set2() {
    ooe_if(3) == "Odd" && ooe_if(4) == "Even"     
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