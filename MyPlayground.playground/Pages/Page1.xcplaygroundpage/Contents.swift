import Cocoa


//optioal ?
var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
//not gonna work, need to wrap it with if
//print(square(number: number))

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

//commonly used make optional as constant
//shadowing technique
if let number = number {
    print(square(number: number))
}


//using guard
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")

        // 1: We *must* exit the function here
        return
    }

    // 2: `number` is still available outside of `guard`
    print("\(number) x \(number) is \(number * number)")
}


//uisng nil coalesing ??
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"
//let new = captains["Serenity", default: "N/A"]

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let books = Book(title: "Beowulf", author: nil)
let authors = books.author ?? "Anonymous"
print(authors)

let input = ""
let numberr = Int(input) ?? 0
print(numberr)

//optional chaining
let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book2 {
    let title: String
    let author: String?
}

var book: Book2? = nil
let authorr = book?.author?.first?.uppercased() ?? "A"
print(authorr)

