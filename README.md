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

i'm learning about default value param, handle error in function,  


note: 
- when removeAll array and will be store another value, you can use KeepCapacity to save the memory alocation for the array. so it don't have to re grow the memory for array.
- you can spesific call error type or general it (better spesific the error)
- use do , try, and catch to use throws on function
----
