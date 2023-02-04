/*:
 # Understanding Strings
 ---
 
 ## Topic Essentials
 The Swift `String` class is a key building block of any application you build. A string is literally a collection of characters strung together that can be manipulated, mutated, and accessed in a variety of ways.

 ### Objectives
 + Understand the difference between empty strings and strings without initial values
 + Adding strings together using the + or += operator
 + Create a string using interpolation
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
//Literal value=> the actual value being held in a variable Variable=>is the placeholder for the literal value. Holds reference in memory for the literal value
// Declaring strings
var myName="Tom"
var mySurname:String="Munyiri"
var myAge=27
print("My name is",myName,mySurname)
// Concatenation
print("My name is",myName+" "+mySurname)
mySurname+=" Mwangi"
print("My surname is",mySurname)

// String interpolation
print("My full name is \(myName) \(mySurname). I am \(myAge) years old")
