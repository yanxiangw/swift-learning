// Array
let kingdoms = [
    "Kingdom of the North", "Kingdom of the Moutain and the Vale", "Kingdom of the Isles and Rivers", "Kingdom of the Rock", "Kingdom of the Stormlands", "Principality of Dorne", "Kingdom of the Reach"
]
// To declare an array without initialization
var colors : [String]

colors = ["Red", "Green", "Blue"]
colors[0] = "Reddish"
colors.append("Yellow")
colors.insert("Cyan", atIndex: 1)

print("The second color is \(colors[1])")

for kingdom in kingdoms {
    print(kingdom)
}


// Dictionary
var capitals = [
    "VIC" : "Melbourne",
    "NSW" : "Sydney",
    "QLD" : "Brisbane",
    "SA" : "Adelaide",
    "WA" : "Perth"
]

print(capitals["VIC"]) // Optional is returned; key may not exists
capitals.updateValue("Canberra", forKey: "ACT")
capitals.updateValue("Royal Melbourne", forKey: "VIC")

// To delete key/value pair
capitals["QLD"] = nil
capitals.removeValueForKey("WA")
capitals

for (state, city) in capitals {
    print("The capital of \(state) is \(city)")
}

// Tuple
// Tuples can be handle to return multiple values from a function
func getLocation() -> (Float, Float) {
    return(-37.8132, 144.963)
}
let (lat, lon) = getLocation()
print("Melbourne is at \(lat), \(lon)")


// Optional: to declare an variable that may be nil
var season : String?
season = "Summer"
print("It is \(season!)") // forced unwrapping the variable using !, error will raise if season is nil

print(capitals["VIC"])

if let result = capitals["VIC"] { // optional binding to resolve variable without forced unwrapping
    print(result)
} else {
    print("Captical for VIC does not exist")
}

// Enumeration
enum Direction {
    case North
    case East
    case South
    case West
    // case North, East, South, West // same as above
}

var facing : Direction
facing = .East // Strongly typed variable ensure the . notation without Enumeration type is enough

switch facing {
case .North:
    print("Facing the sun")
case .East:
    print("Facing sunrise")
case .South:
    print("Facing sea")
case .West:
    print("Facing sunset")
}

// Closure: lambda code block to pass around
let numbers = [42, 4, 8, 16, 32, 15]

let numberByHatch = numbers.sort({
    (num1 : Int, num2 : Int) -> Bool in
    return num1 < num2
})
