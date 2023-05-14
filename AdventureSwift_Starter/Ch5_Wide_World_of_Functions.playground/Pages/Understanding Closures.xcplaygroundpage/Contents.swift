/*:
 # Understanding Closures
 ---
 
 ## Topic Essentials
 Like functions, closures are enclosed blocks of functionality but with more concise syntax. In Swift closures act like blocks or lambda expressions in other programming languages, allowing us to pass function-like operations around like variables.
 
 ### Objectives
 + Write an empty closure declaration
 + Create a closure that takes in an `Int` parameter and returns an `Int` value
 + Update the closure to use type inference and shorthand
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Defining closures - these are lambdas in other languages like kotlin or JS
// closureName, type, return type
var closure : () -> () =  {}
// Initializing closures
var computeDamageBonus  = { (base:Int) -> Int in
    return base * 4
}

//make the above simpler by letting the compiler infer the type
var computeDamageBonusSimplerSyntax  = { base in
    return base * 4
}

computeDamageBonus(25)
computeDamageBonusSimplerSyntax(30)
