/*:
 # Function Types
 ---
 
 ## Topic Essentials
 Every function has a type, or unique signature. Function types can be used in Swift like any other type, such as strings or integers. This can come in handy when you need to pass functions into other functions as parameters, or use them as return types.
 
 ### Objectives
 + Create a function that takes in an integer, multiplies it by 4 and returns it
 + Create another function that takes an integer and a function as parameters
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Function types
func computeBonusDamage(baseDamage:Int)->Int{
    return baseDamage * 4
}

// (Int)->Int ----- this is the function signature of the above function

// Functions as parameters - This is the equivalent of high order functions in kotlin
// These functions make our code cleaner and functions shorter and only do one thing. 
func dealDamage(baseDamage:Int, bonusDamage: (Int) -> Int) -> Int{
    let bonus  = bonusDamage(baseDamage)
    print("Base Damage is: \(baseDamage) \nBonus Damage is \(bonus)")
    return bonus
}
 print("Deal damage is \(dealDamage(baseDamage: 55, bonusDamage: computeBonusDamage))")
