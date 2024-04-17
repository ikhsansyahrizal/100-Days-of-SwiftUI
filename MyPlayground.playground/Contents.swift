import Cocoa

//Boolean
let goodDogs = true
let gameOver = false

// or u can assign it with operater that return true / false
let isMultiple = 120.isMultiple(of: 3)
let fileName = "paris.jpg"
print(fileName.hasSuffix(".jpg"))

//flip bool value with !
var isAuth = false
isAuth = !isAuth

//you also can flip the value with toogle()
var isSleeping = true
print(isSleeping)
isSleeping.toggle()
print(isSleeping)



// Join string

//using +
let firstPart = "Hello, "
let secondPart = "World"
let greeting = firstPart + secondPart
let greeting2 = firstPart + "My " + secondPart

//using string interpolation
let name = "ikhsan"
let age = "24"
let message = "Hello, my name is \(name) i'm \(age) years old"


// Checkpoint 1 convert celcius to fanrenheit
let celciusNum = 100
var farenheit = (celciusNum * 9) / 5 + 32
print(celciusNum)
print(farenheit)
