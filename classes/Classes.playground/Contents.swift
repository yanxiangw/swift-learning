func getPrice() -> Double {
    return 699.95
}

// Class definition using `class` keyword
// Three level of access:
//    private: accessible within same file,
//    internal: accessible within same module
//    public: anywhere import the module
class Phone {
    // instance variables declared using `var`,
    var brand : String
    var name : String
    lazy var price = getPrice() // lazy variable does not execute until price is used
    
    static var ringTone : String = "foo" // class variable
    
    var fullName : String { // Computed properties
        return "\(brand) \(name)"
    }
    
    init() { // default initializer, initial value must be assigned either directly or in init() method
        brand = "Apple"
        name = "iPhone"
    }
    
    init(brand : String, name : String) { // initializer with parameter
        self.brand = brand // self reference to current instance
        self.name = name
    }
    
    func description() -> String {
        return "\(fullName)"
    }
    
    func ring() -> String {
        return "\(Phone.ringTone) \(Phone.ringTone)" // access instance method using class name
    }
    
    deinit { // without ()
        // some necessary cleanup code
    }
}

var iphone = Phone()
var android = Phone(brand: "Google", name: "Pixel")
print("This is \(iphone.description()))")
print("This is \(android.description())")


class VersionedPhone: Phone { // Class inheritence
    var version : String {
        willSet { // observer called before set variable
            print("About to change version \(newValue)")
        }
        didSet { // observer called after set variable
            print("Have changed from \(oldValue)")
        }
        
        // important: observer cannot be used for lazy variables
    }
    
    override init() { // override must be explicit
        version = "7"
        super.init()
    }
    
    override func description() -> String {
        let originalDescription = super.description()
        return "\(originalDescription) \(version)"
    }
}

var phone = VersionedPhone()

phone.version = "7s"
print("This is \(phone.description())")

VersionedPhone.ringTone = "buz"

phone.ring()

