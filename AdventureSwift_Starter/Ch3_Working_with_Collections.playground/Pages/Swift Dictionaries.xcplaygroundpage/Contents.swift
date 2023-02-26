/*:
 # Swift Dictionaries
 ---
 
 ## Topic Essentials
 Like arrays, dictionaries are collection types, but instead of holding single values accessed by indexes, they hold **key-value** pairs. All keys need to be of the same type, and the same goes for values. It's important to know that dictionary items are **unordered**, and their values are accessed with their associated keys.
 
 ### Objectives
 + Understand basic dictionary syntax
 + Create a dictionary called **blacksmithShop** and fill it with a few items
 + Access and udpate key-value pairs using subscript
 + Access all the keys and values of **blacksmithShopItems**
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Creating dictionaries
// a dictionary stores key value pairs. Think of it as a HashMap in Java/Kotlin
//var blackSmithShop:Dictionary<String,Int> = [:] //syntax 1 - like java/kotlin
var blackSmithShop:[String:Int] = [:] //syntax 2 - the swift simple hand way. Here we initialize it with some empty values
blackSmithShop["Bottle"] = 1 // adding items - very similar to kotlin
blackSmithShop["Shield"] = 10
print(blackSmithShop)

// Accessing and modifying values
var shieldPrice = blackSmithShop["Shield"]
print("\(shieldPrice!)") //did forced unwrapping here
blackSmithShop["Bottle"] = 24
blackSmithShop["Toner"] = 45

// All keys and values
var allKeys = [String](blackSmithShop.keys)
var allValues = [Int](blackSmithShop.values)
