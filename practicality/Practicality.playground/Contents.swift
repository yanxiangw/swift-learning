// import foundation framework is essential here to allow array to be declared with multiple types
import Foundation

var name = "Jon Snow"
var age = 14
var charactor = [name, age] // charactor here is [AnyObject]

// AnyObject are typically returned from Objective-C method call
// It is preferable not to create AnyObject manually in any case, it may raise run time error

// When we want to apply
for item in charactor {
    if item is Int { // is checks if item is type of Integer
        let i = item as! Int // as! here do the force downcast to convert item to Int type
        print("ACOK \(i + 1)")
    }
    // More compact way of perform logic base on element type
    if let str = item as? String { // as? here check if the item is a String and unpack item to String type
        str.componentsSeparatedByString(" ")
    }
}

// Protocol is a way of define interface in Swift
protocol Likable {
    func like() ->  Bool
    
    var title : String { get set }
}
// class conform the protocol must provide all the methods and properties
class Post : Likable {
    func like() -> Bool {
        return true
    }
    
    var title : String {
        get {
            return "New Post"
        }
        set {
            self.title = newValue
        }
    }
}
let post = Post()

// Swift also allow user to do monkey patch with extensions
extension Int {
    func hourLater() -> NSDate {
        return NSDate().dateByAddingTimeInterval(NSTimeInterval(3600 * self))
    }
}
let oneHourLater = 1.hourLater()


// Generic is done by using angel bracket <T> type T can then be used throughout the function
func returnBack<T>(let parameter : T) -> T {
    return parameter
}

returnBack(1)
returnBack("One")