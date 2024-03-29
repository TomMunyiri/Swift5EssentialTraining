/*:
 # Swift Enumerations
 ---
 
 ## Topic Essentials
 Swift enumerations allow you to put related values together into a group that you can use and access. Like switch statements, each value in an enum is considered a different case, which is one of the many reasons they go so well together.
 
 ### Objectives
 + Declare a basic enum called **GameState**
 + Store an enum case as a variable and print out its value
 + Use a switch statement to define actions for each enum case
 + Understand default cases and the **@unknown** keyword
 
 [Next Topic](@next)
 
 */
// Declaring an enum
enum GameState1{
    case Completed
    case Initializing
    case LoadingData
    case Restarting
}

enum GameState{case Completed, Initializing, LoadingData}
// Storing and switching on an enum value

var currentState = GameState.Completed
print("Current State: \(currentState)")

//usage in a switch statement
switch currentState{
    case .Completed:
        print("Completed")
    case .Initializing:
        print("Initializing")
    case .LoadingData:
        print("LoadingData")
    @unknown default:
        print("Unknown")
}
