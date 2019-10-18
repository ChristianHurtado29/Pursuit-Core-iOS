import UIKit

/*
// Strings - a collection of unicode compliant characters

// declaring and initializing a literal String
var message = "Good morning iOS 6.3"

// iterate or loops over a String using a for-in loop
for char in message {
    print("character is \(char)")
}

// length of String using the count properly
print("message count is \(message.count)") // count is a property, not function

"melinda".count

//======================
//      unicode
// e.g a space in unicode U+0020
//======================

// a character as a one or more unicode scalars
let name = "al\u{0065}\u{301}x"

let bagel = "\u{1F96F}"

// comparing unicode scalar with character
let unicodeLowercaseE = "\u{0065}"
let eCharacter = "e"
if unicodeLowercaseE == eCharacter{
    print("they are equal")
}

// accessing and modifying String
let programmingLanguage = "Swift"

let fellows = ["Kelby", "Stephanie"]

fellows.count // 2

let firstFellow = fellows[0]

// access the first character in "Swift" => "S"
// programmingLanguage[0] - does not compile

let firstIndex = programmingLanguage.startIndex

// only way to subscript into a String is using a String.index value
let firstCharacter =
    programmingLanguage[firstIndex]
print("first character in \(programmingLanguage) is \(firstCharacter)")

let endIndex = programmingLanguage.endIndex
let lastCharacterIndex = programmingLanguage.index(before: endIndex)
let lastCharacter = programmingLanguage[lastCharacterIndex]
print("the last character in \(programmingLanguage) is \(lastCharacter)")

//===================================
//      making a range using indices
//===================================
let alphabets = "abcdefghijklmnopqrstuvwxyz"
//let alphabetsStartIndex = alphabets.startIndex

// using a for loop print out he first 6 characters in the alphabet
var counter = 0
for char in alphabets{
    print(char)
    if counter < 6 {
        counter += 1
        print(char) // if counter is 0 it'll print a, 1 = b,2 = c.....
    }   else { break }
}
print("for loop has ended")

// using a for-loop and enumerated print the first siz alphabets

for (index, char) in alphabets.enumerated() {
    if index < 6 { // 0, 1, 2, 3, 4, 5
        print("\(char) at index \(index)")
    } else {
    break
    }
    print("")
}

let alphabetsStartIndex = alphabets.startIndex


//===================================
//      multi-line Strings
//===================================

let multilineString = """
Hello
Hello
Hello
"""
print(multilineString)

//

var myString = "abcdcba"
for character in myString {
 if character <= "b" {
  print(character, terminator:"")
 }
}

*/

//concactenation = "a" + "b" = "ab"


//Question1
//var numString = " "
//for num in 1...10 {    // this is where the blank is turned into an in
//    numString += String(num)
//}
//print(numString)

//Question2

//var numString = " "
//for num in 5...51 {
//    if num % 2 == 0 {
//        numString += String(num)
//}
//}
//print(numString)


//Question3
//var numString = " "
//
//for num in 1...60 {
//    if num % 10 == 4 {
//    numString += String(num)
//}
//}
//print(numString)

//Question5

//let myStringSeven = "Hello world!"
//
//let endIndex = myStringSeven.endIndex
//let lastCharacterIndex = myStringSeven.index(before: endIndex)
//let lastCharacter = myStringSeven[lastCharacterIndex]
//print("the last character in \(myStringSeven) is \(lastCharacter)")

//Question6

//let message = "Hey, I'm actually learning how to code"
//
//print("message is \(message.count) characters long")
//if message.count % 2 == 0 {
//    print("Message is even!")
//}   else{
//    print("Message is odd!")
//}
//switch message {
//case message where message.count % 2 == 0:
//    for char in message {
//    print(char, terminator: " ")
//    }
//default:
//for (index, char) in message.enumerated() where index % 2 == 0 {
//    print(char, terminator: " ")
//}
//

//===============================
// Strings part 2    10/2/29
//===============================

// given a String, switch on it and print all the characters if it is even or print every other character if it is odd

//let message = "Good afternoon!"
//
//print("there are \(message.count) characters in message")
//
//if message.count % 2 == 0 {
//    print("string is even")
//}   else {
//    print("string is odd")
//}
//
//// solution for question above:
//switch message {
//case message where message.count % 2 == 0:
//    for char in message {
//        print(char, terminator: " ")    // \n means end line
//    }
//default:
//    for (index, char) in message.enumerated() where index % 2 == 0 {
//        print(char, terminator: " ")
//    }
//}
// "\n" is the endline escape character

//==============================================
//             escape characters
//   e.g "\n"- new line.  "\t"- tab "\""- quote
//==============================================
// newline example
let message1 = "Hello\niOS 6.3\nGreat to have you!"
print(message1)

// tab escape
let tabMessage = "\tProgramming is fun"
print(tabMessage)

// quote escape
let quote = "In \"2014\" Swift was introduced"
print(quote)

// multiline example
let multiline = """
Hello
It's
Hot out today
"""

print(multiline)


//========================================
//  using string initialization methods
//========================================

let char: Character = "a"
let str = String(char)

print(type(of: char))
print(type(of: str))

// initialize a string by integer
let currentYear = String(2019)
print("current year is \(currentYear)")

let float: Float = 23.56
let double = 45.12
let result = Double(float) + double
print(result)

//==============================================
//  string format e.g formatting decimal places
//==============================================
print("the result of the calculation above is",
      String(format: "%.2f", result))

//==============================
//  creating a range on a String
//==============================
let messageToSelf = "I really love Swift and I'm passionate about coding."

// ALL BELOW IS JUST TO PRINT THE ABOVE MESSAGE TO A CERTAIN POINT. IT'S THE FORMULA TO PICK THE 18TH INDEX TO PRINT IT AS A SUBSTRING

// getting the first position of messageToSelf
let startIndex = messageToSelf.startIndex
let offsetToSomeCharIndex = messageToSelf.index(startIndex, offsetBy: 18)
let range = startIndex...offsetToSomeCharIndex
// DOES NOT COMPILE SUBSCRIPT [] NOT ALLOWED USING AN INT ONLY WORKS ON A String.Index type
//let substring = messageToSelf[0]

let substring = messageToSelf[range]

print("substring is \(substring)")

//====================================================
//  Search for the index of a chracter in a string
//====================================================
let swiftMessage = "I really love Swift ❤️"
// emoji keyboard is control + command + space

let charIndex = swiftMessage.firstIndex(of: "t") ?? swiftMessage.startIndex

print("We found \"\(swiftMessage[charIndex])\" in swiftMessage String")
// put the backslashes before the character you want to escape

//===================================
//        prefix and suffix
//===================================
let name = "alex"
if name.hasPrefix("al") { // hasPrefix() method return a Bool whether the prefix in the String was found
print("Hi Al!")
}

let message2 = "questions"
if message2.hasSuffix("ions") {
    print("we also have onions")
}

// contains
if message2.contains("q") { // runtime for contains is linear or big O of n or O(n)
    print("message2 contains q")
}

//==================================================
//      some Character properties
//======+===========================================
let character1: Character = "y"
if character1.isLetter {
print("\(character1) is a letter")
}

// isCurrency e.g $
// isPunctuation e.g ?
// isNumber e.g 4


//==========================================
//      NSString is an Objective-C API
// API = Applicatin Programming Interface
//==========================================
var message4 = "coding"
message4 = message4.replacingOccurrences(of: "g", with: "🚀")
print(message4)


let fullName = "Alex Paul Hurtado"
let separatedNames = fullName.components(separatedBy: " ")
print("There are \(separatedNames.count) items" )
print(separatedNames)



//print("\u{0043}\u{0068}\u{0072}\u{0069}\u{0073}\u{0074}\u{0069}\u{0061}\u{006E}")

//var e = "- - - - - - - - - - -"
//
//for i in 1...11 {
//    print("- ", terminator:"")
//}
//var r = "| \u{2698} "
//for i in 1...5 {
//    print("")
//    for j in 1...5 {
//print(r, terminator: "")
//        if j % 5 == 0 {
//            print("|")
//}
//}
//}
//print(e)
print("\u{265C}\u{265E}\u{265D}\u{265B}\u{265A}\u{265D}\u{265E}\u{265C}")
var p = ("\u{265F}")
for _ in 1...8{
    print(p, terminator: "")
}
var o = (" ")
for _ in 1...4{
    print(o)
}
var wp = ("\u{2659}")
for _ in 1...8{
    print(wp, terminator:"")
}
print(" ")
print("\u{2656}\u{2658}\u{2657}\u{2655}\u{2654}\u{2657}\u{2658}\u{2656}")
