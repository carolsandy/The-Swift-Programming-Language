let someString = "Some string literal value"
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
print(quotation)

let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

print(singleLineString)
print(multilineString)

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

print(softWrappedQuotation)

let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""

print(lineBreaks)

let linesWithIndentation = """
    This line doesn't begin with whitespace.
        Tis line begins with four spaces.
    This line doesn't begin with whitespace.
    """
print(linesWithIndentation)

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"
let surprisedFace = "\u{1F62E}"
let yetSomeOther = "\u{1F43E}"

let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""
print(threeDoubleQuotationMarks)
print(#"Line 1\nLine 2"#)
print(#"Line 1\#nLine 2"#)
print(###"Line1\###nLine2"###)

let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}

var variableString = "horse"
variableString += "and carriage"

for character in "Dog!🐶" {
    print(character)
}

let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

let exclamationMark2: Character = "!"
welcome.append(exclamationMark2)

let badStart = """
one
two
"""
let end = """
three
"""
print(badStart + end)

let goodStart = """
one
two

"""
print(goodStart + end)

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

print(#"Write an interpolated string in Swift using \(multiplier)"#)
print(#"6 times 7 is \#(6 * 7)."#)

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"
let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"
let enclosedEAcute = "\u{E9}\u{20DD}"
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
let regionalIndicatorForMX: Character = "\u{1F1F2}\u{1F1FD}"
let bathroomUnicode: Character = "\u{1F6C0}"
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

var word = "cafe"
print("the number of characters in \(word) is \(word.count)")

word += "\u{301}"
print("the number of characters in \(word) is \(word.count)")

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
//greeting[greeting.endIndex] Error
//greeting.index(after: greeting.endIndex) Error

for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}

var welcome2 = "hello"
welcome2.insert("!", at: welcome2.endIndex)

welcome2.insert(contentsOf: " there", at: welcome2.index(before: welcome2.endIndex))

welcome2.remove(at: welcome2.index(before: welcome2.endIndex))

let range = welcome.index(welcome2.endIndex, offsetBy: -6)..<welcome2.endIndex
welcome2.removeSubrange(range)

let greeting2 = "Hello, world!"
let index2 = greeting2.firstIndex(of: ",") ?? greeting2.endIndex
let beginning = greeting2[..<index2]
let newString = String(beginning)

let quotation2 = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation2 == sameQuotation {
    print("These two strings are considered equal")
}

let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"

if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters are not equivalent")
}

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}

print("There are \(act1SceneCount) scenes in Act 1")
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}

print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

let dogString = "Dog!!🐶"
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")

for scalar in dogString.unicodeScalars {
    print("\(scalar) ", terminator: "")
}
print("")

