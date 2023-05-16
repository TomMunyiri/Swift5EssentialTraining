/*:
 # Subclassing in Swift
 ---
 
 ## Topic Essentials
 A great way to expand the flexibility of your custom classes is to create subclasses that share the functionality of a parent class.
 
 ### Objectives
 + Create a new class called **Ranger** as a subclass of **Adventurer**
 + Set up it's designated initializer
 + Override the parent class instance method and class property
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
//Parent class
class Adventurer {
    var name: String
    var specialMove: String?
    let maxHealth: Int
    
    fileprivate var health: Int
    var Health: Int {
        get { return health }
        set {
            if (newValue <= 100) {
                health = newValue
            }
        }
    }
    
    static var maxActivePlayers: Int {
        return 10
    }
    
    class var credo: String {
        return "Defend the helpless!"
    }
    
    init(name: String, maxHP: Int) {
        self.name = name
        self.maxHealth = maxHP
        self.health = maxHP
    }
    
    convenience init(name: String) {
        self.init(name: name, maxHP: 100)
    }
    
    func printStats() {
        print("Character: \(self.name), Health: \(self.health)/\(self.maxHealth)")
    }
}

// Subclass
class Ranger: Adventurer{
    //Inheritance trickles from top to bottom
    var classAdvantage: String
    override class var credo: String{
        return "To the King"
    }
    init(name:String, advantage: String){
        //we have to initialize non optionals
        self.classAdvantage = advantage
        //please note the order. any properties are initialized before we call the parent's init..sio kama huko kotlin
        super.init(name: name, maxHP: 150)
    }
    
    override func printStats() {
        print("\(self.name) Ranger. Advantage: \(classAdvantage)")
    }
}

var player1 = Adventurer(name: "Harrison", maxHP: 99)
player1.printStats()
Adventurer.credo
Ranger.credo
var argonRanger = Ranger(name: "Tom", advantage: "Super")
argonRanger.printStats()
