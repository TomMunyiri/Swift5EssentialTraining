/*:
 # Working with Strings
 ---
 
 ## Topic Essentials
 There are several `String` methods that you'll be using on a regular basis, which include `contains`, `append`, `insert`, `remove`, and `split`. Refer to the documentation to see everything the `String` class offers.
 
 ### Objectives
 + Retrieve state information about a string using `count` and `isEmpty`
 + Use each of the mentioned class methods to alter the starting string
 
  [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
// Test variable
var dialogue="The in keeper's dialogue"
var empty=""

// String data
print(dialogue.isEmpty)
print(empty.isEmpty)
print(dialogue.count)
print(dialogue.contains("z"))
// Append and Insert
dialogue.append(contentsOf: ", we have appended")
print(dialogue)

// Remove and Split
dialogue.removeLast()
dialogue.removeFirst()
dialogue.split(separator: ",")
print(dialogue)

