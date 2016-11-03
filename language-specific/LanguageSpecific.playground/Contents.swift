import Foundation

// Structures
// in Swift it is almost same as class, they share a lot of features
// When assign to variable or pass to a function, rather then pass by reference, structures are passed by value
// Many utility type are implemented using struct: String, Array, Dictionary
// It is mainly intended for simple data structure holding simple data types

func formatNumber(number : Number) -> String {
    return "\(number.valueString) is \(number.value)"
}

struct Number {
    var value : Int = 0
    var valueString : String = "Zero"
    lazy var repreString : String = formatNumber(self)
}

func addOne(var number : Number) -> Int {
    number.value += 1
    return number.value
}

var n = Number()
addOne(n) // n here is passed by value, so any change to n in function addOne will not change the original object
n.value

// One difference with struct is Swift auto generate a initializer with keyword value as parameter
// Also struct cannot inheritent other and it does not have deinit
var three = Number(value: 3, valueString: "Three", repreString: nil)
print(three.repreString)

// Similiar to JavaScript: `==` check for quality, `===` check for identity

// Swift has a more concise equivalent to trinary operation like `foo = bool ? first : second`
var value : Int?
let defaultValue = 99
var result = value ?? defaultValue // default value is assigned to result only when value is nil

// Remainder operator can also be used with float point variables or negative numbers
Double(result) % -5.3

n.repreString.componentsSeparatedByString(" ") // componentsSeparatedByString is a methods bridged from Foundation framework in Objective-C