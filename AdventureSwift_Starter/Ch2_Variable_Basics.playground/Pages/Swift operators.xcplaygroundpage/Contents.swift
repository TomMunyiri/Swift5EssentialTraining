/*:
 # Swift Operators
 ---
 
 ## Topic Essentials
 Operators in Swift are used to create mathematical expression, evaluate equality, and declare value ranges.
 
 ### Objectives
 + Understand the different operators and their basic uses
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
// Arithmetic (+, -, /, *)
var arithmetic=4+3+(4/2)*2
print("Result is:",arithmetic)

// Compound assignments (+=, -=, *=, /=, %=)
var compound=4
// long hand way
//compound=compound+4
//short hand way
compound+=compound
print("Compound result is:",compound)

// Modulo (%) - Remainder after a division
var modulo = 191 % 90
print("Remainder is:",modulo)


/*  Comparisons (==, !=, >, <, >=, <=)
    Logical operators (!, &&, ||)
    Ranges (1...5 or 1..<5)
*/
