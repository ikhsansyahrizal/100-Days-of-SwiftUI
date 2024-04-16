import Cocoa

var greeting = "Hello, playground"
greeting = "now it's ikhsan"
print(greeting)

//Constant variable
let welcome = "Welcome to swift \"playground\" "
//welcome = "now it's ikhsan"
print(welcome)

//create strings
let movie = """
Once
Upon A
Time
In
Mexice
"""

//number
let oneMillion = 1_000_000
var counter = 10
counter += 5

//decimal number
let test = 0.1 + 0.2

let a = 1
let b = 2.0

//can't mix int and double (type safety)
let c = a + Int(b)

var rating = 5.0
rating *= 2



print(movie)
print(movie.count)
print(greeting.uppercased())
print(welcome.hasPrefix("Welcome"))
print(oneMillion - 1_000_00)
print(oneMillion + 2_000_00)
print(oneMillion * 2)
print(oneMillion / 2_000_00)
print(test)
print(c)
print(rating)
