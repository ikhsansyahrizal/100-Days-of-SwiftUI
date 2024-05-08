This repo contains my progress of learning ios with swift ui, doing 100 days of Swift-UI program by hacking with swift. 
all the progress are in branches, and this main branch will be the summary of it.



## Day 1
i'm learning about introduction into swift ui, about this course, and setup new playground in xcode. 
i also learn about :

- variables (var and constant let)
- create strings, number, decimal
- assign value and basic math operator
---


## Day 2
i'm learning about data type boolean and joining string. i also create an program to convert celciuse to fanrenheit.

noted : 
- to flip value on boole you can use ! or toogle()
- don't use double / float to store value like money, because it's not accurate
- while joining string with +, and have it multiple times, swift only do it one at a time, not the whole thing at the same time.
ex : 
```
let greeting = "hi" + "my" + "name" + "is" + "ikhsan"
```
> for more efficient way and flexible to combine with other data type, use string interpolation instead.
----


## Day 3

i'm learning about arrays, dictionaries, set and enum.

array - > store multiple data

dictionaries -> key and value 

set -> not allow same data and wont remember position, must be unique data.

enum -> set of named and value, are really optimized by swift

noted :
- in array, swift provide a few funcionality like append, remove, sorted, reverse, and contains.
- single array can't contains different data type.
- enum are best to store like error type, or some case that would not change and constant

> set are very optimize to get item than dictionaries and array.
----


## Day 4

i'm learning about type annotations on var, const, and collection and create and program that print number of items in array and print uniq item of it.

type inferense -> swift figure out itself what data type we store in variable

noted: 
- swift cant define data type on var based on the value, but can't define what data type should be used
- swift make sure that you can't use empty var/const. 
- set can be create from array with Set(someArray)

> use type annotation as much as possible to make avoid mistake data type, that can lead to unexpected result / error
----


## Day 5 

i'm learning about if, switch and ternary conditional operator. 


noted:
- you can do multiple condition in if 
- you can do nested if or switch
- in switch you have fallthrough to execute below case.
----

## Day 6

i'm learning about iteration with for, while and make program FizzBuzz. 

noted:
- you can do nested for or while or combine
- you can use continue or break 
- you can use _ if no need to use the iteration variable
----

## Day 7

i'm learning about functions, with return, param, multiple return with tuple and customize param label.

function -> is piece of code that separate from main func / body


note:
- you don't have to use return if there is only 1 line of code
- you can use return on non-return func ti exit
- in tuple you can use _ if you're not using the param
- when labelize param name, inside func use internal name and outside func (calling the func) use external name
----

## Day 8

i'm learning about default value param, handle error in function, i also create and program that find square root of number with validaton (error handling).


note: 
- when removeAll array and will be store another value, you can use KeepCapacity to save the memory alocation for the array. so it don't have to re grow the memory for array.
- you can spesific call error type or general it (better spesific the error)
- use do , try, and catch to use throws on function
----

## Day 9

i'm learning about closure, trailing closure, function as param and aslo create program for checkpoint 5.


note:
- you can directly use closure in constant / variable
- you can custom .sorted functionality
- you also can pass function into other function (like custom sorted)
- in closure we don't use param name on argument
- there is also trailing closure (it less clearly but shortend syntax)
- anywhere you pass func, you also can pass closure
- shortened param name $0 and $1
----

## Day 10

i'm learning about struct, mutating struct properties, observe and do action, and custom init.

note:
- func inside of struct can't change var of the struct. it can be read though
- use "mutating func .." to change properties (var) of the struct.
- mutating func on struct data type, only can be call from var. 
- struct have 2 properties, 
1. stored properties, place a value directly on struct
2. computed porperty, recalculate the value over properties every time it's access (blend stored properties and method)
- there are 2 action on observ property change, willSet & didSet. -> only on struct
- observe property only can be used on var.
----

## Day 11
i'm still learning about struct, how to limit acces for internal data properties, static properties and methods.

static properties and method -> are belong to struct itself (doesn't need to create a instance, can be used directly)
self -> current value of struct (the value of it)
Self -> current type of struct (int or string etc)

note:
- 4 access limit :
1. private -> only can be access from internal struct
2. fileprivate -> only current file can access
3. public -> anyone can access
4. private(set) -> anyone can read, but only internal struct can modified the value.
- note that if you have private properties swift can't init it, you have to give a default value or make custom init by urself.
- static properties and methods can't call regular (non-static) properties or method. but it work reversesaly.
----


## Day 12
i'm learning about class, diff clas and struct, deinit class, inherit classes, copy class. and also create checkpoint 7.

class is used to create data types, 5 differ from struct :
1.You can make one class build upon functionality in another class, gaining all its properties and methods as a starting point. If you want to selectively override some methods, you can do that too.
2.Because of that first point, Swift won’t automatically generate a memberwise initializer for classes. This means you either need to write your own initializer, or assign default values to all your properties.
3.When you copy an instance of a class, both copies share the same data – if you change one copy, the other one also changes.
4.When the final copy of a class instance is destroyed, Swift can optionally run a special function called a deinitializer.
5.Even if you make a class constant, you can still change its properties as long as they are variables.

note:
- child will inherit parent classes (properties and method)
- override func on child if you need to custom inherited method from parent
- use final class on parent if want to make the class can't be inherited.
- if u have custom init on child class, make sure also init the init of parent class on the child class. 
- when you change var that reference from a class, it will also change the class value, use copy() to make the paren't not change. 
- when create instance of class, you can combine with constant class and variable property of the parent class (vice-versa). but knowing that which instance / properties thaht changing.
- struct is a data type, and class is a refernce type.
-----


## Day 13
i'm learning about protocol

protocol -> is a bit like contract, blueprint of methods, properties, and other requirements that can be adopted by classes, structs, or enums. bare minimum that it need to implement.


note : 
- u can implement multiple protocl in 1 class/struct
- it's on possible to create set only properties
- 