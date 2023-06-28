/*:
 # Raw and Associated Values
 ---
 
 ## Topic Essentials
 Enumerations can be expanded to include raw values, which can store unique or sequential values, or associated values, which can capture case specific parameters for use in their respective code blocks.
 
 ### Objectives
 + Declare an enum with a raw value
 + Declare an enum with associated values
 + Add a method inside the enum to execute a switch statement for each case
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Raw values
enum NonPlayableCharacters:String{
    case Village = "Village value"
    case BlackSmith = "BlackSmith value"
    case Merchant = "Merchant value"
}

var blackSmith = NonPlayableCharacters.BlackSmith
print(blackSmith.rawValue)

// Associated values
enum PlayerState{
    case Alive
    case KO(level:Int)
    case Unknown(debugError:String)
    
    func evaluateCase(){
        switch self{
        case .Alive:
            print("Still alive and kicking")
        case .KO(let levelRestart):
            print("Sorry, Back to level \(levelRestart)")
        case .Unknown(let message):
            print(message)
        default:
            print("Unknown case")
        }
    }
}

PlayerState.KO(level: 1).evaluateCase()

