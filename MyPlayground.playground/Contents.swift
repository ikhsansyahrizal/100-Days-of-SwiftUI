import Cocoa

// if

let speed = 80
let grade = 60

if speed < 90 {
    print("you're slow")
} else {
    print("you're fast")
}

if grade <= 60 {
    print("you're past")
} else {
    print("learn more")
}


// check string conditiion who initiate first
let name1 = "stephen"
let name2 = "Aston"

if name1 > name2 {
    print("\(name1) first then \(name2)")
}

if name1 < name2{
    print("\(name2) first then \(name1)")
}

var someNum = [1,2,3]
if someNum.count > 2 {
    someNum.append(0)
    print(someNum)
} else {
    someNum.removeLast()
    print(someNum)
}

let noName = ""

if noName.isEmpty {
    print("is empty")
}

let arrayOfname = ["susan", "john", "doe"]

if arrayOfname.contains("susan") {
    print("susan exist")
} else if arrayOfname.contains("doe") {
    print("doe exist")
} else {
    print("none of them exist")
}

if arrayOfname.count > 1 && arrayOfname.contains("doe") {
    print("true")
}

let num1 = 12
let num2 = 20

if num1 > 13 || num2 < 30 {
    print(true)
}


let place = "Manhattan"

switch place {
case "Boston":
    print("it's on boston")
    
case "New York":
    print("it's on new york")
    
case "Hollywod":
    print("horray hollw wood")
    
case "Manhattan":
    print("it's a manhattan")
    
default:
    print("its not there")
}

let ring = 2

switch ring {
    
case 1:
    print("1 ring")
    
case 2:
    print("2 ring")
    fallthrough
case 3:
    print("3 ring")
    fallthrough
case 4:
    print("4 ring")

default:
    print("no ring")
}

let userAge = 12
let canVote = userAge > 18 ? "yes can vote" : "sorry, too young"
