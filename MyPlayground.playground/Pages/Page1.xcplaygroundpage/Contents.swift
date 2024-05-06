import Cocoa

// limit acces to internal properties on stuct
struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 200)

let success = account.withdraw(amount: 100)
if success {
    print("withdraw money success")
} else {
    print("failed withdraw maoney")
}

// this should'nt be allow, that why we put private on properties
//account.funds -= 2000

//private properties with custom init
struct Person {
    private var socialSecurityNumber: String
    init(ssn: String) {
        socialSecurityNumber = ssn
    }
}
let sarah = Person(ssn: "555-55-5555")
