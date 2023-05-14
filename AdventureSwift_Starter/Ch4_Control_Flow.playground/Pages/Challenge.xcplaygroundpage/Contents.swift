/*:
 # Chapter Challenge: Game Logic
 ---
 ### Tasks
 1. Create two optional string variable called **lefthandWeapon** and **righthandWeapon**. Assigning them initial values is at your discretion.
 2. Use optional binding to unwrap both optionals in a single statement and debug both outcomes.
 3. Create a dictionary called **playerExp** and assign it some key-value pairs of type string and integer.
 4. Use a `for-in` loop to iterate over **playerExp** and capture the keys and values.
 5. Add a `guard` statement inside the `for-in` loop to make sure each player is at least level 1 to proceed. Don't forget to include the `continue` keyword.
 6. Use a switch statement to define the following cases:
    6a. exp is equal to 32
    6b. exp is between 200 and 500
    6c. Use value binding to store exp and check that it is greater than 500 using the `where` keyword
 
 [Previous Topic](@previous)
 
 */
// 1
var lefthandWeapon:String? = "I am left hand"
var righthandWeapon:String? = "I am right hand"
// 2
if let isRightHandWeapon = righthandWeapon, let isLeftHandWeapon  = lefthandWeapon{
    print("Both \(isRightHandWeapon) and \(isLeftHandWeapon) are available")
}else{
    print("The weapons do not match")
}
// 3
var playerExp: [String: Int] = ["Beginner": 10, "Intermediate": 15, "Senior": 20,"Principal": 32]
// 4
// 5
for  (player, experience) in playerExp{
    print("Player \(player) experience is \(experience)")
    guard experience <= 1 else{
        print("You are an experienced player")
        continue
    }
    // 6
    switch(experience){
    case 32:
        print("This Player \(player) experience is 32")
    case 200..<500:
        print("Player experience is between 200 and 500")
    case (let localExp) where localExp>500:
        print("Experience is greater than 500")
    default:
        print("None of the cases have been met")
    }
}

