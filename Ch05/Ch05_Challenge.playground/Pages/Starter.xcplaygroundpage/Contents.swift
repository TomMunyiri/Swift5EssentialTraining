/*:
 # Chapter Challenge: Battle Grounds
 ---
 
 ### Tasks
 1. Create a type alias tuple called **Attack** with named values for name and damage
 2. Write a simple function called **attackEnemy** with an integer parameter that prints out an interpolated string
 3. Write an overloaded version of **attackEnemy** with a parameter of type Attack that returns an string
 4. Use both **attackEnemy** methods
 5. Create a type alias closure called **AttackClosure** that takes in an array of Attacks and returns void, then declare a test array of Attack values.
 6. Write a function called **fetchPlayerAttacks** that has a closure parameter of type AttackClosure and no return value
 7. Call **fetchPlayerAttacks** and loop through the array inside the closure body to print out its tuple values
 
 [Previous Topic](@previous)
 
 */
// 1
typealias Attack = (name:String, damage:Int)
// 2
func attackEnemy(damageParam:Int){
    print("The damage is \(damageParam)")
}
// 3
func attackEnemy(attack:Attack) -> String {
    return attack.name
}
// 4
attackEnemy(damageParam: 3)
attackEnemy(attack: Attack("Dusk Attack",56))
// 5
typealias AttackClosure = ([Attack]) -> Void
var attackValues = [Attack("Dusk Attack",56),Attack("Midday Attack",478),Attack("Sunrise Attack",32)]
// 6
func fetchPlayerAttacks(attackClosure:AttackClosure) {
    attackClosure(attackValues)
}
// 7
fetchPlayerAttacks { (attacks) in
    for (name,damage) in attacks {
        print("Name is: \(name) and Damage is: \(damage)")
    }
}
