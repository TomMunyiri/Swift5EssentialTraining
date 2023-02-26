/*:
 # Core Dictionary Methods
 ---
 
 ## Topic Essentials
Dictionary elements can be easily updated and removed using subscript syntax or class methods.
 
 ### Objectives
 + Create a dictionary called **playerStats** and initialize it with key-value pairs
 + Update **playerStats** using different methods
 + Remove key-value pairs from **playerStats** using different methods
 + Create a 2 dimensional dictionary called **questDict** and populate it
 + Use chained subcripts to access a nested key-value pair
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Caching and overwriting items
var playerStats = ["HP":10,"Attack":20,"Gold":200]
var oldValue = playerStats.updateValue(30, forKey: "Attack") //helps cache the old value while at the same time updating the value to a new value
print(playerStats)

//playerStats = ["GP":23,"Professional":56] // completely overwrites our dictionary

// Caching and removing items
//playerStats["Gold"] = nil
var removedValue = playerStats.removeValue(forKey: "Gold")
print(playerStats)
// Nested dictionaries

var questBoard = [
    "Fetch Gemstones":[
        "Objective":"Retrive 5 Gemstones",
        "Secret":"Complete in under 5 minutes"
    ],
    "Defeat Big Boss":[
        "Objective":"Beat the Boss",
        "Secret":"Win 50% health"
    ]
]

print(questBoard)

var defeatBigBossSecret = questBoard["Defeat Big Boss"]?["Secret"]
print(defeatBigBossSecret!)

