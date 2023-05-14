/*:
 # Using Closures IRL
 ---
 
 ## Topic Essentials
 There are several ways to use closures now that we know how their syntax works, including with Swift functions that perform operations based on predicates or as input parameters and return values for our own custom functions.
 
 ### Objectives
 + Call the `sorted` function on an array and use the closure to order the items
 + Create a function that takes in a closure as a parameter
 + Create another function that uses a closure as its return type
 + Understand the use cases of these different approaches
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */

// Test variables
var highScores = [3412, 0, 1988, 722]
var partyMembers = ["Harrison", "Steven", "Bob the Noob"]

// Existing functions with closures
var ascendSort  = highScores.sorted{ (firstValue,secondValue) in
    return firstValue < secondValue
}
print(ascendSort)

// Using custom closures with functions

func activeMembers(completion : ([String]) -> Void){
    completion(partyMembers)
}

activeMembers{ (members) in
    for name in members {
        print("\(name) is active!")
    }
}

func activeMembers(members:[String]) -> () -> Void {
    let completion: () -> Void = {
        for member in members {
            print("\(member) is present!")
        }
    }
    return completion
}

var closeReturn  = activeMembers(members: partyMembers)
closeReturn()

