/*:
 # Overloading Functions
 ---
 
 ## Topic Essentials
 Swift will let us have multiple functions with the same name as long as their function type, or signature, is different. This is called function overloading, and is very useful in cases when you may need constant functionality with dependent or computed results.
 
 ### Objectives
 + Create a base function with no parameters or return values
 + Create an overloaded function with an integer parameter
 + Create another overloaded function with two parameters and a return type
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Base function
func attackEnemy(){
    print("Initial function")
}

// Overloaded functions, kotlin has this too
func attackEnemy(damage:Int){
    print("The damage is \(damage)")
}

func attackEnemy(damage:Int, player:String)->Int{
    return damage
}

attackEnemy()
attackEnemy(damage: 5)
print(attackEnemy(damage: 40, player: "Tom"))

