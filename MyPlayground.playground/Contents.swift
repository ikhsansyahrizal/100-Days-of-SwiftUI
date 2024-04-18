import Cocoa

//empty array
var score = Array<Int>()
var anotherSchore = [String]()

// save value on array
var country = ["indo","singapore", "malay", "thai", "vietnam"]
var age = [1,2,3,4]
var height = [12.3, 24.5, 12.5]

//contains
var checkCountry = country.contains("indo")

//sorted
var sortCountry = country.sorted()
sortCountry.reverse()
print(sortCountry)

//var notAllow = age.append("tyes")

// add adn remove value with
country.append("india")
age.append(10)
height.append(9.2)
print(country)
print(age)
print(height)

age.remove(at: 0)
print(age)

print(country[0])


// dictionaries
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville",
]

//define key and value data type
var dataPerson = [String: Int]()
dataPerson["Age"] = 23
dataPerson["Height"] = 170
dataPerson["kids"] = 0

print(employee["name", default: "Unknown"])
print(employee["notExist", default: "Unknown"])


// set
let nameSet = Set(["stephern", "rowling", "choco"])
var movie = Set<String>()
movie.insert("marvel")
movie.insert("batman")
movie.insert("flas")

print(movie)


// enum
enum Weekday {
    case sunday, monday, tuesday, thurstday, friday, saturday
}

var day = Weekday.monday
day = Weekday.friday
day = .thurstday
