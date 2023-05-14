/*:
 # Complex Functions
 ---
 
 ## Topic Essentials
 Functions in Swift can go from simple to complex very quickly with multiple return types, optionals, and even default values.
 
 ### Objectives
 + Create a new function with an optinal return type
 + Create a an overloaded function with two return values
 + Create another overloaded function with two parameters, both with default values
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Optional return value
func setUpArenaMatch()->Bool?{
    return nil
}
if let initSuccess = setUpArenaMatch(){
    print("Level initialized \(initSuccess)")
}else{
    print("Something went terribly wrong")
}
// Multiple return values -- returns a tuple
func setUpArenaMatch(levelName:String)->(success:Bool,secretItem:String){
    print("Level \(levelName) initialized")
    return (true,"Heads Up")
}
var levelDetails = setUpArenaMatch(levelName: "Pro")
print(levelDetails.success)
print(levelDetails.secretItem)

// Default values - We can have default values just like we have in kotlin
func setUpDefaultMatch(levelName:String="Match Fires", opponents:Int=3){
    print("Level name is \(levelName) and it has \(opponents) opponents")
}

setUpDefaultMatch()
//we can also override default values
setUpDefaultMatch(levelName: "Point Cruz",opponents: 5)
