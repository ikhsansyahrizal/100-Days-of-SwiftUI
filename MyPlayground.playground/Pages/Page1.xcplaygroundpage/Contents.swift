import Cocoa

// create struct
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let black = Album(title: "Black", artist: "Taylor", year: 2013)

print(red.title)
print(black.year)

red.printSummary()
black.printSummary()

//change struct data from inside func
struct Employee {
    let name: String
    var vacationRemaining: Int
    
    
    //use mutating func instead of func to change struct data value
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!!")
            print("Days remaining \(vacationRemaining)")
        } else {
            print("Ooops! there aren't enough days remaining.")
        }
    }
}

//can't be used mutating on let 
var archer = Employee(name: "SusaN", vacationRemaining: 10)
archer.takeVacation(days: 2)
print(archer.vacationRemaining)
