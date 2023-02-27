/*:
 # Core Set Methods
 ---
 
 ## Topic Essentials
 Because sets only store unique values, there are a number of useful operations you can perform on them without having to reinvent the sorting/filtering wheel. These include the `intersection` and difference of set values, as well as `union` and `subtraction`. 
 
 ### Objectives
 + Copy and paste the **allQuests** set from the previous page
 + Create a new set called **completedQuests** and assign it a subset of quests from **allQuests**
 + Try out the different operations the `Set` class can perform
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
var activeQuests:Set<String> = ["Fetch Gemstones","Big Boss","The Undertaker","Granny Needs Firewood"]
var completedQuests:Set<String> = ["Big Boss","All-4-One","The Hereafter"]
// Set operations
var commonQuests = activeQuests.intersection(completedQuests) //common values in both sets
var differentQuests = activeQuests.symmetricDifference(completedQuests) //the complete opposite of intersection, returns values that are not common in both sets
var allQuests = activeQuests.union(completedQuests) //combines both sets. Also note that the duplicate values are removed and we remain with only one value for each element in the set
var clippedQuests = activeQuests.subtracting(completedQuests)

//activeQuests.formIntersection(completedQuests)
//activeQuests.formSymmetricDifference(completedQuests)
//activeQuests.formUnion(completedQuests)

