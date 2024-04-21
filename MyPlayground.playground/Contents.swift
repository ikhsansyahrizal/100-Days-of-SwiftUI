import Cocoa

// iteration with for

let loops = ["ios", "macos", "tvos", "watchos"]
for os in loops {
    print("ios works well in \(os)")
}

for i in 1...10 {
    print("\(i) time tables")
    
    for x in 1...10 {
        print("\(i) x \(x) = \(i*x)")
    }
}

var lyric = "Haters gonna "

for _ in 1...15 {
    lyric += "hate "
}

print(lyric)


// while

var countdown = 10

while countdown > 0 {
    print(countdown)
    countdown -= 1
}
print("blastOff")


// continue and break
for i in 1...10 {
    if i == 5 {
        print("its continue")
        continue
    }
    
    if i == 8 {
        break
    }
    print(i)

}


// checkpoint

// fizzbuzz

for i in 1...100 {
    
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    }
    
    if i.isMultiple(of: 3) {
        print("Fizz")
    }
    
    if i.isMultiple(of: 5) {
        print("Buzz")
    }
    
    
    print (i)
}
