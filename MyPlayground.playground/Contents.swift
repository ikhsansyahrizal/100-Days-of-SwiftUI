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
