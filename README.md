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