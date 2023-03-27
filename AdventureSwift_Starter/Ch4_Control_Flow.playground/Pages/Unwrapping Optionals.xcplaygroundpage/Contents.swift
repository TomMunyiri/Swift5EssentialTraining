/*:
 # Unwrapping Optionals
 ---
 
 ## Topic Essentials
 Optional unwrapping uses a variation of the if statement to safely check for nil values without crashing the code. If a value exists it will be stored in a local variable that's only accessible within the body of the if statement.

 
 ### Objectives
 + Use optional binding to unwrap a single optional
 + Unwrap multiple optionals in a single line of code for more compact structure
 + Unwrap nested optional values
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
var itemGathered: String? = "Diamond Longsword"
var isShopOpen: Bool? = true

var blacksmithShop: [String: Int] = ["Bottle": 10, "Shield": 15, "Ocarina": 100]
var questDirectory = [
    "Fetch Gemstones": [
        "Objective": "Retrieve 5 gemstones",
        "Secret": "Complete in under 5 minutes"
    ],
    "Defeat Big Boss": [
        "Objective": "Beat the ultimate boss",
        "Secret": "Win with 50% health left"
    ]
]

// Optional binding
//here we are unwrapping and storing in a variable
if let item = itemGathered{
    print("You found a \(item)")
}else{
    print("No item found")
}

//unwrapping multiple optionals in the same line. The have to both be true. It's similar to && operator in an if statement
if let shopOpen = isShopOpen, let searchedItem = blacksmithShop["Shield"]{
    print("Shop open is \(shopOpen) and we have \(searchedItem)")
}else{
    print("Either the shop is not open or we do not have the item")
}

//use chaining. play around with the keys to see 
if let fetchGemsObjective = questDirectory["Fetch Gemstones"]?["Objective"]{
    print("Our objective is to \(fetchGemsObjective)")
}else{
    print("Objective does not exists")
}

