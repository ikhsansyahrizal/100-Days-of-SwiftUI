import Cocoa

// functions

func showWelcome() {
    print("Hello")
    print("Welcome to playgorund")
    print("Have fun :)")
}

showWelcome()

//with param
func printTimeTable(number: Int, end: Int) {
    for i in 1...end {
        print("\(number) * \(i) = \(number * i)")
    }
}

printTimeTable(number: 5, end: 20)


// func with return

func areLetterIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

areLetterIdentical(string1: "sds", string2: "sds")
areLetterIdentical(string1: "sds", string2: "sds3")

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

pythagoras(a: 3, b: 4)


// multiple return with tuple

func getUser() -> (firstName: String, secondName: String) {
    (firstName: "John", secondName: "Doe")
}

//let name = getUser()
//let first = getUser().firstName
//let second = getUser().secondName
let (first, second) = getUser()
print(first + " " + second)

// external name param

func timeTable(times number: Int) {
    for i in 1...10 {
        print("\(number) * \(i) = \(number*i)")
    }
}

timeTable(times: 9)
