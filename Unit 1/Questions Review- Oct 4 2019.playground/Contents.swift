import UIKit

//var str = "Hello, playground"

// Questions REview: October 4, 2019

// String Lab
// Question: Given a String use a for-in loop to reverse it. e.g input: "hello" output: "olleh"

let message = "Hello"
var reversedString = ""
for currentChar in message {
    reversedString += String(currentChar)
 //   print(char, terminator: " ")

// we want to loop through the given message String and add the characters we visit in reverse order to our reversedString variable
    print("currentChar: \(currentChar) reversedString: \(reversedString)")
    
    reversedString = currentChar.description + reversedString
    
    print("currentChar: \(currentChar) reversedString: \(reversedString)")
    
    //string(currentChar) is the same as currentChar.description (to make a character have String value)

// (currentChar + reversedString)
// 1. "" + "h" => "h"
// 2. "e" + "h" => "eh"
// 3. "l" + "eh" => "leh"
// 4. "l" + "leh" => "lleh"
// 5. "o" + "lleh" =? "olleh"
}
print(reversedString)

// Arrays lab
/*
 Question:
 Given an array of String, find the STring with the most a's in it.
 
 input["apes", "abba", "apple"]
 
 output: "abba"
 */
let arr = ["aped", "abba", "apple"]

// how do we keep track of the STring with the most "a" characters
var mostACount = 0
var stringWithMostAs = ""

for str in arr {
    
    // in the future we can use filter{} here
    // we will create a local variable to keep track of the As" in current string
    var aCount = 0 // this variable is only local to its scope
    for char in str { // String.element is the same as Character  // firsti for loop opens access to the arrays
        //second one gives us access to the characters within the array
        if char == "a" {
        aCount += 1
        
    }
}
    // here we will compare a's count -- it is outside of the inner loop
    if aCount > mostACount { // 1st time looking at apes, apes is more
        mostACount = aCount
        stringWithMostAs = str
    }
}


print("\(stringWithMostAs) has the most a's which has a count of \(mostACount)")
