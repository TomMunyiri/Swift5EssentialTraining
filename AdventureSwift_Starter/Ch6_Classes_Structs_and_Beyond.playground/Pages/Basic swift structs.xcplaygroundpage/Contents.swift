/*:
 # Basic Swift Structs
 ---
 
 ## Topic Essentials
 Swift structures share a very similar syntax and functionality, but they are useful for creating different kinds of instances. While classes are well suited to complex data structures and are passed by reference, structs are passed by value and better suited to creating simple instances that don't need inheritance or reference capabilities.
 
 ### Objectives
 + Declare a basic struct called **Level**
 + Assign a few instance properties
 + Define two custom initializers
 + Add non-mutating and mutating functions
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Declaring a new struct - similar to data class in kotlin
/// <#Description#>
struct Level {
    var levelID:Int
    var levelObjectives: [String]
    var levelDescription:String{
        return "Level ID: \(levelID)"
    }
    
    init(levelID: Int,levelObjectives: [String]){
        self.levelID = levelID
        self.levelObjectives = levelObjectives
    }
    
    func queryObjectives(){
        for objective in objectives{
            print(objective)
        }
    }
    
    mutating func completeObjective(index:Int){
        levelObjectives.remove(at: index)
    }
    
}

var objectives = ["Find the lost cat","Collect all Gemstones","Defeat the Big Boss"]
var level1 = Level(levelID: 1, levelObjectives: objectives)

var defaultLevel = level1
level1.completeObjective(index: 0)
level1.queryObjectives()
print(level1)

// Value types again
