/*:
 # Swift Tuples
 ---
 
 ## Topic Essential
 In Swift, tuples can take a group of values and store them as one compound value. Unlike arrays, tuples can store values of different types, so you can mix and match as much as you need.
 
 Tuples are great for returning values from functions, and storing temporary groups of values. However, as tempting as it may be to use tuples to create and store complex data structures, it’s still a better idea to use classes and structs for that, as we’ll see later on.
 
 ### Objectives
 + Create a simple tuple named **uppercutAttack** with initial values and no value names
 + Create another tuple named **planetSmashAttack** with initial values and value names
 + Create a final tuple named **shieldStompAttack** with no initial values and a type annotation
 + Explore what tuples have to offer
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Simple tuple

var uppercutAttack:(String,Int,Bool) = ("Upper Cut Attack",1,true)
print(uppercutAttack)
uppercutAttack.0
uppercutAttack.1
uppercutAttack.2

//decompose or unpack tuple values into their own variable for clarity
var (attack,damage,rechargeable) = uppercutAttack
attack
damage
rechargeable
print(rechargeable)

// Naming tuple values
var shieldStomp : (attack:String,damage:Int,rechargeable:Bool)
shieldStomp.attack="test"
shieldStomp.damage=46
shieldStomp.rechargeable=false
var fieldSmash = (attack:"Upper cut attack",damage:45,rechargeable:true)
print(shieldStomp)

// Naming values with type annotation

