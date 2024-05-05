//: [Previous](@previous)

import Foundation

// strcut dynamic properties
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
    
}


var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)


// action when property change
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 2
game.score += 6
game.score += 3


// didset and will set
struct App {
    var contacts = [String]() {
        willSet {
            print("current value \(contacts)")
            print("next value will be \(newValue)")
            
        }
        
        didSet {
            print("there are now \(contacts.count)")
            print("old value was \(oldValue)")
            
        }
    }
    
}

var app = App()
app.contacts.append("jacob")
app.contacts.append("david")
app.contacts.append("keel")
app.contacts.append("kary")



// custom init

struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)
