/*:
 # Core Array Methods
 ---
 
 ## Topic Essentials
 Now that we know how to create and access arrays, we need to learn how to dynamically modify them. Like `Strings`, `Arrays` come with several handy methods built right in for just that purpose.
 
 ### Objectives
 + Create an array called **characterClasses** and assign it initial values
 + Use `append` and += operator to add items
 + Use the `insert` and `remove` methods to change the array further
 + Explore the `reverse`, `contains`, and`sort` methods
 + Create a jagged array called **skillTree** that stores arrays as its values
 + Use chained **subscript syntax** to access a value in **skillTree**
 
  [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
struct Person{
    var firstName:String
    var secondName:String
    var middleName:String
}
// Changing & appending items
var persons = [Person]()
var persons1 = Array<Person>()
var person1 = Person(firstName: "Tom", secondName: "Mwangi", middleName: "Munyiri")
persons1.append(person1)
persons1.count

var characterClasses = ["Tom","Mwangi","Munyiri"]
characterClasses.append("Yusuf")
characterClasses += ["Said"]

//Inserting and removing items
characterClasses.insert("Mwas", at:1)
characterClasses.remove(at: 2)
print(characterClasses)

// Ordering and querying values
characterClasses.sort()
characterClasses.reverse()

characterClasses.reversed()
characterClasses.sorted()

characterClasses.contains("Mwas")
characterClasses.contains("mwas")

// 2D arrays and subscripts
//2D arrays contains other arrays as their values
var skillTree: [[String]] = [["Toma","Mwas"],["Munyiri","Mumbi"]]
var accessMumSkill = skillTree[1][1]

