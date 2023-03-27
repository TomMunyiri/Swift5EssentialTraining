/*:
 # Using FOR-IN Loops
 ---
 
 ## Topic Essentials
 For-in loops are used primarily to iterate, or loop through, sequences. Sequences can be array items, dictionary key-value pairs, ranges, and even characters in a string.
 
 ### Objectives
 + Use a for-in loop to iterate over a string, array, dictionary, and index ranges
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
let playerGreeting = "Hello fellow Hunter!"
let armorTypes = ["Heavy Plate", "Hunters Gear", "Mage Robes"]
let weapons = ["Longsword": 150, "Dagger": 25, "Mace": 75]

// Strings and arrays
for characterGreeting in playerGreeting{
    print(characterGreeting)
}
for armor in armorTypes{
    print(armor)
}
// Dictionary key-value pairs
for weaponKey in weapons.keys{
    print("Our weapon key: \(weaponKey)")
}
for weaponValue in weapons.values{
    print("Our weapon value: \(weaponValue)")
}
for (weapon, damage) in weapons{
    print("Our \(weapon) has a \(damage) % damage")
}
// Using ranges
// There are 3 kind of ranges available, they are: Half Open, Closed and One-sided

//CLOSED RANGE - Takes all numbers between 1 and 10 including 1 and 10
for indexNumbers in 1...10{
    if indexNumbers % 2 != 0{
        print("Odd Number: \(indexNumbers)")
    }else{
        print("Even Number:\(indexNumbers)")
    }
}

//ONE-SIDED RANGE - We can define the starting and end points for the range. Swift will run the loop as long as there are items remaining on either direction
for armor in armorTypes[0...]{//starting from index 0 until there are no more armor types
    print(armor)
}

//HALF-OPEN RANGE - Allow you to specify the last value is left out
for indexNumber in 1..<10{
    print(indexNumber)
}

//combining one-sided range with half-open range
for armor in armorTypes[..<2]{ //prints from index 0 but does not include item at index 2
    print(armor)
}
for armor in armorTypes[1..<2]{ //prints from index 1 but does not include item at index 2
    print(armor)
}
//to avoid getting out of range exception, let's use count() for upper limit
for armor in armorTypes[..<armorTypes.count]{
    print(armor)
}
