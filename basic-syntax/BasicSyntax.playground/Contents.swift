//: Playground - noun: a place where people can play

import UIKit


// Variables are defined using var
// Variables are strong typed, variable type is inferred if not defined
var str = "Hello, playground" // String

// Variables can be declared using ":" without initialization
var price : Double

// Once defined, variable's type cannot be changed anymore
// price = "5 Dollar" will result compiler error

// Constants are created using "let" insteand of "var"
let data = "XCODE"

// Constants can be declared without initialization
let name : String

// Constant value can be set only once
name = "John"
// name = "  " will result compiler error
// "let" can also be used to create immutable object

// String interpolation \() is used to translate variable into text
print("Hello \(name)") // Hello John

// "if" statement must use `true` or `false` as condition
price = 3
if price > 5 {
    print("Are you crazy?")
} else {
    print("A$\(price) is affordable")
}

// "switch" statement must be exhaustive, thus a "default" must provided.
switch price {
case 0:
    print("Nothing is better than free") // no break statement is required, no fallthrough by default
case 0...3: // ranges can be used to check on case
    print("A$\(price) is not too bad")
default:
    break
}

// "for" loop has traditional form initializer; condition; increment
for var i = 0; i < 10; i++ {
    print(i)
}
// Or for-in loop
for number in 0..<5 { // loop 5 times
    price = price + Double(number) // explicit casting is required to do opertation on double
}

// define function using func
func printPrice(price : Double) { // here price is constant parameter same as define using let
    print("Price is now A$\(price)")
}

printPrice(price)

// When working with function with default parameter value, try to use Xcode hint
// Especially when there are multiple parameters with default value
func sayHello(name : String = "John Doe", time : String = "morning") {
    print("Hello \(name). Good \(time)")
}

// Both of these calls are valid
// It seems the first argument should not be named if supplied
sayHello()
sayHello("Jane", time: "afternoon")

