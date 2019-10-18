import UIKit

// Optional - used to indicate that a value May exist
//          - two possible outcomes
//          - outcome1: there is a value and it can be used as FP_NORMAL
//          - outcome2: there isn't a value, in Swift terms it's nil.
/*
 String?
 Bool?
 Int?
 Double?
 Character?
 */
/*
 ways to unwrap an Optional:
 - forced unwrapping e.g Int(response)!
 - nil-coelscing e.g Int(response) ?? 21
 - optional binding e.g if let bindingValue = optionalValue{..we can use binding value here...} else{...}
*/

// attempting to cast a String to an Int using this e.g Int("45")

let floatValue: Float = 45.9
let doubleValue = 10.3
let result = Double(floatValue) + doubleValue // Double(Float value)


let response = "27"

// - 1. forced unwrapping
//var age = Int(response)! 21

// - 2. nil-coelscing
var age = Int(response) ?? 21

//3. optional binding
if let yourAge = Int(response){
    print("the age you entered is \(yourAge)")
}   else{
    print("the response value is nil")
}
