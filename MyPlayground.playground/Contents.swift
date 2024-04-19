import Cocoa

let username: String = "Lasso"
let core: Double = 0

let playerName: String = "Roy"
var luckyNumber: Int = 1
let pi: Double = 3.14
var isAuth: Bool = true


//array, dictionaries, set
var albums: [String] = ["Red", "Fearless"]
var users: [String: String] = ["id": "a cup"]
var books: Set<String> = Set(["batman", "spiderman", "ant man"])

var soda: [String] = ["coke", "pepsi"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case dark, system, light
}

var style: UIStyle = UIStyle.dark
style = .light

//create empt constant
let friendName: String
friendName = "angela"
//cant re assign let twice
print(friendName)


var test: String


// Checkpoint test

// number of array
let theArray = ["sleep","eat","run","eat","walk"]
print(theArray.count)


//uniq item on array
let uniqItem = Set(theArray)
print(uniqItem)
