import Cocoa

protocol Building {
    var rooms: Int {get set}
    var cost: Int {get set}
    var agent: String {get set}
    
    func buildingInfo()
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    func buildingInfo() {
        print("this house have \(rooms) rooms, and sell by \(agent) Developer with price \(cost)")
    }
}


struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    func buildingInfo() {
        print("this office have \(rooms) rooms, and sell by \(agent) Developer with price \(cost)")
    }
}

let house = House(rooms: 2, cost: 500_000, agent: "bunga")
let office = Office(rooms: 24, cost: 1_000_000, agent: "Sani")

house.buildingInfo()
office.buildingInfo()
