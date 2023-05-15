/*:
 # Basic Swift Classes
 ---
 
 ## Topic Essentials
 Even though swift has an entire library of built-in classes and structs for us to use in our applications, we’ll still need to know how to create our own. These data structures can have properties, methods, initializers, and in the case of classes can have their own subclasses.
 
 ### Objectives
 + Create a simple class called **Adventurer**
 + Declare instance properties with or without values
 + Define designated and convenience initializers
 + Understand reference type behavior
 
 [Next Topic](@next)
 
 */
// Declaring a new class

class Adventurer{
    var name : String
    var maxHealth: Int
    var specialMove:String?
    init(name:String,maxHP:Int){
        self.name = name
        self.maxHealth = maxHP
    }
    
    convenience init(name:String){
        self.init(name: name,maxHP: 99)
    }
    
    func initStats() {
        print("Character: \(self.name), Max Health: \(self.maxHealth)")
    }
    
}

var player1 = Adventurer(name: "Harrison", maxHP: 100)
var player2 = Adventurer(name:"Tommy")

player1.initStats()
player2.initStats()

var defaultPlayer = player1

defaultPlayer.name = "Mwangi"

player1.initStats()
