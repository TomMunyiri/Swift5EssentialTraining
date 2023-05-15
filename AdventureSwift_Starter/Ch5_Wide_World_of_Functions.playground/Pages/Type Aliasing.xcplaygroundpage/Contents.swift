/*:
 # Type Aliasing
 ---
 
 ## Topic Essentials
 Type aliasing is a great tool for combining complex or unwieldy custom values or collections of values into clearer types.
 
 ### Objectives
 + Create a type alias tuple with a type annotation
 + Create a type alias closure and give it a type annotation
 + Use the new tuple typealisa as a functions return type
 + Use the new closure typealias as an input parameter for a function
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
var partyMembers = ["Harrison", "Steven", "Bob the Noob"]

// Type alias as a return value
typealias AttackTuple = (name:String,damage:Int,recheargable:Bool)
typealias AttackString = [String]

var sunriseAttack = AttackTuple("Sunrise",45,true)

func levelUpAttack(baseAttack:AttackTuple) -> AttackTuple {
    let increasedAttack : AttackTuple = (baseAttack.name,baseAttack.damage*4,baseAttack.recheargable)
    return increasedAttack
}

var levelledUpAttack = levelUpAttack(baseAttack: sunriseAttack)

// Type alias as a function parameter
//i think this thing called typealias simplifies closures in some way..below code has a simpler syntax than previous one which confused me and was irritating to read
typealias ArrayClosure = ([String]) -> Void
func activeMembers(completion: ArrayClosure) {
    completion(partyMembers)
}

activeMembers { (members) in
    for name in members {
        print("\(name) is active")
    }
}
