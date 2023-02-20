/*:
 # Swift Arrays
 ---
 
 ## Topic Essentials
 Swift arrays are **ordered lists**, meaning that the position of each element is determined by the order it was added. Arrays work off of indexes, which can be used to access and modify the values of individual items.
 
 ### Objectives
 + Create arrays with different syntax
 + Add initial values
 + Use the `count` and `isEmpty` methods
 + Access and update array values using subscripts
 
 [Next Topic](@next)
 
 */
// Creating arrays
var levelDifficulty:[String] = ["Easy","Moderate","Veteran","Nightmare"] //preferred way as it is more concise
var syntax2: Array<String> = Array<String>() //common way even in other languages like kotlin and java
// Count and isEmpty
levelDifficulty.count
levelDifficulty.isEmpty

// Accessing array values
var mostDifficult  = levelDifficulty[3] //this is known as the subscript syntax
levelDifficulty[3] = "Very Difficult" //overides the element in index 3
levelDifficulty

