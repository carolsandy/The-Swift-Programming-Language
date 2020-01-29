//Constants and Variables
let maximunNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

//Type Annotations
var welcomeMessage: String
welcomeMessage = "Hello"
var red, green, blue: Double
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"

print(friendlyWelcome)
print(friendlyWelcome, terminator:";)")
print(friendlyWelcome)
print("The current value od friendlyWelcome is \(friendlyWelcome)")
//This is a comment
/*This is also a comment
 but is written over multiple lines*/

/* This is the start of the first multiline comment.
 /* This is the second, nested multiline comment. */
This is the end of the firts multiline comment.*/
let cat = "🐱"; print(cat)

let minValue = UInt8.min
let maxValue = UInt8.max

print("Int used in this platform \(Int.max) \(Int64.max)")
print("UInt maz value in this platform \(UInt.max)")

let meaningOfLife = 42
let pi = 3.15159

let anotherPi = 3 + 0.14159

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hezadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let piFromConversion = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi)

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString!)
}

if let definiteString = assumedString {
    print(definiteString)
}

func canThrowAnError() throws {
    //this function may or may not throw an error
}

do {
    try canThrowAnError()
    //no error was thrown
} catch {
    //an error was thrown
    
}

let age = 3
assert(age >= 0, "A person's age can't be less than zero.")

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0{
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

let index = 1

precondition(index > 0, "Index must be greater than zero.")
