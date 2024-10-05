
type Action {
    Create
    Cancel
    Claim
}

type Person { 
        name: ByteArray,
        age: Int,
        is_student: Bool     
}

type Person3 = Person

type POSIXtime = Int

type Person2 {
    PersonalInfo {
        name: String,
        age: Int,
        is_student: Bool
    }
    Address {
        street: ByteArray,
        city: ByteArray,
        state: String,
        zip: Int
    }
}

type The_datum {
    datum: Option<Int>
}



fn check_datum_g10(dat: The_datum) -> Bool {
    when dat.datum is {
        None    -> False
        Some(Person) -> x > 10
    }
}

fn show_name(person: Person) -> ByteArray {
    person.name
}

fn the_whole_variable(person: Person) -> Person {
    Person(person.name, (person.age + 1), person.is_student)
}

test show_name_set07() {
    show_name(Person("Alice", 25, True)) == "Alice"
}

test show_new_person() {
    the_whole_variable(Person("Alice", 25, True)) == Person("Alice", 26, True)
}