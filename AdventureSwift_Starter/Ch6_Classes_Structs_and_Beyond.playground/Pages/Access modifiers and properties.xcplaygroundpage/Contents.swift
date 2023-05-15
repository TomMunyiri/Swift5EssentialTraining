/*:
 # Access Modifiers and Properties
 ---
 
 ## Topic Essentials
 Like most programming languages, swift allows you to limit, or control, how classes, structs, properties, and other entities are accessed based on the module or file they’re in. There are four levels of access in swift, public, internal, file private, and private.
 
 Swift also allows properties to be declared as static, class, read-only and read-write.
 
 ### Objectives
 + Explore the four available access levels
 + Add a read-only (computed) property to Adventurer
 + Add a read-write property to Adventurer
 + Add a static and class property to Adventurer
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test class
//public - can be freely accessed from the source file and from any module that inherits the parent module
//internal - can be accessed by any source file within their defining module but nowhere else. Every entity in swift is defined as internal by default
//fileprivate - can only be accessed inside their defining module
//private - can only be accessed from their declaration scope
class Adventurer {
    var name: String
    var specialMove: String?
    let maxHealth: Int
    
    init(name: String, maxHP: Int) {
        self.name = name
        self.maxHealth = maxHP
    }
    
    convenience init(name: String) {
        self.init(name: name, maxHP: 100)
    }
    
    func printStats() {
        print("Character: \(self.name), Health: \(self.maxHealth)")
    }
}

var player1 = Adventurer(name: "Harrison", maxHP: 99)
var player2 = Adventurer(name: "Steven")

player1.printStats()
player2.printStats()
