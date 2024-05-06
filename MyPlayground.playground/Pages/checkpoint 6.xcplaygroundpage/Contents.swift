//: [Previous](@previous)

import Cocoa

// checkpoint 6
// struct for car model

struct CarModel {
    let model: String
    let seat: Int
    var gear: Int
    
    
    
    mutating func changeGear(number: Int) -> Bool {
        if number < 1 || number > 10 {
            print("invalid gear number, try 1...10")
            return false
        } else {
            gear = number
            print("changed gear to \(gear)")
            return true
        }
    }
}

var nisan = CarModel(model: "GT", seat: 4, gear: 2)
nisan.model
nisan.gear
nisan.changeGear(number: 4)
nisan.gear
