/*:
 # Handling Errors
 ---
 
 ## Topic Essentials
 Errors that are thrown from functions need to be handled with a combination of the **try** keyword and a **do-catch** statement. The idea behind this is delegation - where do we want to send out an error and how does it need to be addressed.
 
 ### Objectives
 + Understand error propagation
 + Use the **do-catch** statement to handle errors effectively
 
 [Previous Topic](@previous)
 
 */
// Test code
enum DataError: Error {
    case EmptyPath
    case InvalidPath
}

var loadDataPath = "tom/work/data.txt"
var emptyString = ""

func loadData(path: String) throws -> Bool? {
    guard !path.isEmpty else {
        throw DataError.EmptyPath
    }
    
    guard path.contains("/") else {
        throw DataError.InvalidPath
    }

    return true
}

// Do-Catch statements
do{
    try loadData(path:emptyString)
}catch is DataError{
    print("Invalid or empty path detected")
}catch{
    print("Unknown error occurred")
}

if let dataLoaded = try? loadData(path: loadDataPath){
    print("Data loaded successfully")
}

// Propagating errors - pass our errors to other functions
func propagateDataError() throws{
    try loadData(path: emptyString)
}

do{
    try propagateDataError()
    print("Propagate data error successful")
}catch DataError.EmptyPath{
    print("Empty path detected")
}catch DataError.InvalidPath{
    print("Invalid path detected")
}catch{
    print("Unknown error")
}
