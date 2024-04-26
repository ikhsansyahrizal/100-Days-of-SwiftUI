import Cocoa

//handle error in function

enum PasswordError: Error {
    case short, obvius
}

func checkPassword(_ password: String) throws -> String {
    
    if password.count < 5 { throw PasswordError.short}
    if password == "1234" { throw PasswordError.obvius}
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "125"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Password too short")
} catch {
    print("There was an Error.")
}


//checkpoint program,

// finding square root with validation

enum ValidateNumber: Error {
    case outOfBound, noRoot
}


func rootNum(_ number: Int) throws {
    
    var result = 0
    
    if number < 1 { throw ValidateNumber.outOfBound }
    if number > 10_000 {throw ValidateNumber.outOfBound }
    
    for i in 1...100 {
        result = i * i
        if result == number {
            print("square root of \(i) = \(result)")
            break
        }
    }
    
    if result != number { throw ValidateNumber.noRoot }
}

do {
    try rootNum(9)
} catch ValidateNumber.outOfBound {
    print("use number between 1...10000")
} catch ValidateNumber.noRoot {
    print("no root on this number")
}

