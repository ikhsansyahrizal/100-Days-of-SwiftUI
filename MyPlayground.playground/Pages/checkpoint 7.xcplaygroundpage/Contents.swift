import Cocoa

class Animal {
    var leg: Int = 4
}

class Dog: Animal {
    
    func speak() {
        print("guggg!!")
    }
    
}

class Corgi: Dog {
    override func speak() {
        print("corgi gug!!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle gug!!")
    }
}

let corgi = Corgi()
let poodle = Poodle()
corgi.speak()
poodle.speak()


class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
    }
    
    func speak() {
        print("meow!!")
    }
    
    func checkTamed() {
        isTame ? print("tamed") : print("no tamed")
    }
    
}

class Persian: Cat {
    
    override func speak() {
        print("Persian cat meow!!")
    }
    
}


class Lion: Cat {
    
    override func speak() {
        print("Lion cat meow!!")
    }
}


let cat1 = Persian(isTame: true)
let cat2 = Lion(isTame: false)

cat1.speak()
cat1.checkTamed()
cat2.speak()
cat2.checkTamed()
