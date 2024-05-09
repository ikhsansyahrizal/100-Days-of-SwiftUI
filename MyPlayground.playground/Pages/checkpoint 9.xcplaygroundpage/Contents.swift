import Cocoa

func someArray(num value: [Int]?) -> Int { return value?.randomElement() ?? Int.random(in: 1...100) }

print(someArray(num: []))
