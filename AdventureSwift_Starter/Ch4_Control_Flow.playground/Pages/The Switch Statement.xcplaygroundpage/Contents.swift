/*:
 # The SWITCH Statement
 ---
 
 ## Topic Essentials
 A switch statement takes a value and runs it against possible matching patterns, with each possible match having a different block of executable code. While that might sound boring, switch statements in Swift have a lot of features that make them excellent for decision logic.
 
 ### Objectives
 + Use a switch statement to execute different code for different **initial** values
 + Use a switch statement to evaluate multiple variables
 + Use value binding and the `where` keyword to add logic to more cases
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
let initial = "A"
let hp = 26
let mp = 24

// Simple switch -> similar to the when statement in kotlin
switch initial{
case "H":
    print("this is the case H")
case "A":
    print("this is the case A")
default:
    print("this does not match any case")
}

// Complex variations
//case stopped being assessed when a case is matched..be careful how you arrange your cases
switch (mp,hp){
case(14, 12):
    print("Good job")
case(1...30, 20..<25):
    print("Case accomplished")
case(let localMP, let localHP) where localHP+localMP>20:
    print(localHP+localMP)
default:
    print("No case matched")
}

