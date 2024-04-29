import Cocoa

//separate the func work
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymus"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)


// closures
let sayHello = { (name: String) -> String in
    "Hi \(name)"
}

sayHello("susan")
print(sayHello("theressa"))


// custom sorted func
let team = ["stephanie", "argus", "jake", "paul"]
let sortedTeam = team.sorted()
print(sortedTeam)

      
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "jake" {
        return true
    } else if name2 == "jake" {
        return false
    }
    return name1 < name2
}

//by function
//let teamWithFirstCapt = team.sorted(by: captainFirstSorted)
//print(teamWithFirstCapt)

//inline closure
let captainFirstTeam = team.sorted(by: { (name1: String, name2:String) -> Bool in
    if name1 == "jake" {
        return true
    } else if name2 == "jake" {
        return false
    }
    return name1 < name2
})

print(captainFirstTeam)


// trailing closure with shortenede syntax
let captainFirstTeam2 = team.sorted {
    if $0 == "jake" {
        return true
    } else if $1 == "jake" {
        return false
    }
    return $0 < $1
}

let upperCaseTeam = team.map { $0.uppercased()}
print(upperCaseTeam)


// function as param
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

//ex1:
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}
print(rolls)

//ex2
func genereateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: genereateNumber)
print(newRolls)


// multiple param func
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void, fourth: () -> Void, fifth: () -> Void) {
    print("bout to do first work")
    first()
    print("bout to do second work")
    second()
    print("bout to do third work")
    third()
    print("bout to do fourth work")
    fourth()
    print("bout to do fifth work")
    fifth()
}

doImportantWork {
    print("first work")
} second: {
    print("second work")
} third: {
    print("third work")
} fourth: {
    print("fourth work")
} fifth: {
    print("fifth work")
}


// checkpoint 5

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31 ,49]

//short answer
let _ = luckyNumbers
    .filter { !$0.isMultiple(of: 2) }   // filter out even numbers
    .sorted()                           // sort the odd numbers
    .map { print("\($0) is a lucky number.") } // map to strings


