/*:
 # Working with Sets
 ---
 
 ## Topic Essentials
 Sets are a great tool you need to store unique, unorderd values in a collection, as opposed to arrays and dictionaries which can hold duplicates with no issue.
 
 ### Objectives
 + Create a set named **activeQuests** and understand the syntax
 + `insert` and `remove` elements from **activeQuests**
 + Sort **activeQuests** and check if it `contains` a certain value
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Creating sets
var activeQuests:Set<String> = ["Fetch Gemstones","Big Boss","The Undertaker","Granny Needs Firewood"] //Type inference in sets is a bit different. You have to put the Set keyword after the variable name so that the compiler does not assume it's an array

// Inserting and removing elements
activeQuests.insert("Only the Strong")
activeQuests.remove("Big Boss")
print(activeQuests)

// More common methods

activeQuests.contains("Fetch Gemstones")

print(activeQuests.sorted())

