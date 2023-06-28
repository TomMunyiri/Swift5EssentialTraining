/*:
 # Introducing Protocols
 ---
 
 ## Topic Essentials
 Swift protocols are essentially groups of properties and behaviors that can be adopted by a class or struct. If a class or struct implements a protocol, that class or struct enters into an agreement that says they will follow the blueprint the protocol has set out.
 
 ### Objectives
 + Declare a protocol
 + Add properties, a function and an initializer
 + Create a struct that adopts the protocol
 + Adopt multiple protocols
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Declare a protocol
protocol Collectable{
    var name:String {get}
    var price:Int {get set}
    
    init(withName:String, startingPrice:Int)
    func collect()->Bool
}

extension Collectable{
    var priceIncrease: Int{
        return self.price * 10
    }
    
    init(name:String){
        self.init(withName: name, startingPrice: 100)
    }
    
    func collect() -> Bool {
        print("Default item could not be collected")
        return false
    }
}

protocol Usable{
    func use()
}

// Protocol adoption

class Item:Collectable{
    var name: String
    var price: Int
    
    required init(withName: String, startingPrice: Int) {
        self.name = withName
        self.price = startingPrice
    }
    
    func collect() -> Bool {
        print("Item name is \(name)")
        print("Item price is \(price)")
        return true
    }
    
    func use(){
        print("Use")
    }
}

var item = Item(withName: "Unga", startingPrice:100)
item.collect()
item.use()
var item2 = Item(name:"Antidote")
item2.price

extension String{
    func fancyDebug(){
        print("This string has \(self.count) characters")
    }
}

item2.name.fancyDebug()
