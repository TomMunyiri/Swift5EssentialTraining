/*:
 # Booleans and Logical Operators
 ---
 
 ## Topic Essentials
 Booleans are declared with the `Bool` keyword, and are very handy for setting up flags and logic checks. They follow the same type inference rules as other types, so you can declare them with initial values or without depending on your needs
 
 ### Objectives
 + Create a simple boolean with an initial value
 + Modify the boolean using the NOT ("Bang") operator
 + Understand the uses of the AND and OR operators
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
// Test variable
var isActive = true
var isPresent:Bool = true

// Logical operators (!, &&, ||)

if(isActive){
    print("isActive")
}
if(!isActive){
    print("!isActive")
}
if((isActive) || (!isActive)){
    print("Either way")
}
if(isActive && isPresent){
    print("isActive and isPresent")
}


