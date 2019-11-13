import Foundation
//
//// Optionals: is a type that represents two possibilities: either we have a value or we do not have a value (nil).
//
//// Swift data types support optionals e.g
///*
//    String
// */
//
////============================================
////  Introduction to Optionals
////============================================
//var name: String = "Alex"
//print(name)
//
//var age: Int? = 21 // optional Int? with default value of nil
//print(age) // nil - doesn't have value
//
//var num = Int("5") // optional Int?
//
////============================================
////       Ways to unwrap Optionals
////  1. Forced unwrapping using and exclamation mark! or some programmers refer to it as banging !
////
////  2. Nil-coalescing using two question marks ?? followed by a default value that we provide
////  3. Optional binding using if let, where a value is assigned the existing value ig one is availabe.
////  4. Implicit unwrapping e.g var name: String!
////
////============================================
//
////============================================
////          Forced Unwrapping
////============================================
//
//let decadeFromNow = age! + 10 // Cannot add Int? + Int -- exclamation point force unwraps an optional integer into a regular integer
//// force unwrap is dangerous and should only be used sparingly ONLY when you the developer is GUARANTEED a value at runtime
//print (decadeFromNow)
//
////============================================
////           Nil-Coalescing    >> think of this as an or/else
////============================================
//
//var temperature: Int? = 75 //
//
//let validTemperature = temperature ?? 67 // 67 is the default temperature value in the ase temperature is nil
//print("Temperature is \(validTemperature)")
//
//
//var cohort: Int? = 4
//
//var nextYearCohort = (cohort ?? -1)
//
//if nextYearCohort == -1 {
// print("Something went wrong with the application")
//} else {
//    print("Everything went well")
//}
//print("Pursuit next cohort will be \(nextYearCohort)")
//
////============================================
////          Optional Binding: if let, while let
////============================================
//
var wage: Int? = 40_000 // underscores allow you to break up your integer values. intsead of 40,000 it'd be 40_000
var year: Int? // nil by default if a value is not provided

//// if let unwraps the wage variable, if it does have a value then that value gets assigned to the bindedValue variable constant
//
//// 1. wage within the if is still optional
//// 2. not idiomatic swift (swifty)
//if wage != nil {/*............*/}
//
//if 5 < 2 || 5 > 10 {
// print("in here")
//} else {
//    print("out here")
//}
//
//
//// below is a bindedValue
//// validWage is 40000
//// validYear is nil
if let validWage = wage,
    let validYear = year { // chaining these values is similar to &&
    // >> if let wage has a valid value, assign it to bindedValue
  // we only enter the if let block {.....}
  // if wage is NOT nil, in other words, ONLY if wage has a value!

  // if wage has a value the if let is TRUE
  // if wage is nil the if let is FALSE
  print("You entered \(validWage) as your wage in the current year of \(validYear)")
} else { // else condition is false, or wage is nil
//    print("You did not enter a valid wage \(String(describing: wage))")
    print("values are unavailable")
}

//// string interpolation
//var modelYear: Int? = 2006
//print("model year is \(modelYear ?? 1959)")
//
////bindedValue will not be seen outside of the brackets. bindedValue IS ONLY ACCESSIBLE WITHIN ITS OWN BRACKET
//
////============================================
////   testing optional for equality
////============================================
//
//var someValue: Int? = 7
//if someValue == 7 {
//    print("\(String(describing: someValue)) is equal to 7.")
//}
//
//
////============================================
////        looping through an optional array
////============================================

var numbers: [Int?]
numbers = [4, 9, nil, 10, 20, nil]

// add ONLY valid integers
//var sumUnwrappedUsingOptionalBinding = 0
//var sumUsingNilCoalescing = 0
//var currentCount = 0
//for currentNum in numbers {
//    // optional binding to unwrap
//    if let validNum = currentNum { // optional binding to unwrap the current num
//        sumUnwrappedUsingOptionalBinding += validNum
//    for currentCount in numbers
//        if validNum{
//            currentCount += 1
//        }
//    }
//
//    sumUsingNilCoalescing += num ?? 0
//}
//print("the sum of numbers is \(sumUnwrappedUsingOptionalBinding)")
//print("the sum of numbers using nil-coalescing is \(sumUsingNilCoalescing)")

//Question 1
var userNameOne: String?
userNameOne = "Test User"

if let UserName = userNameOne {
    print("The user name is \(UserName)")
} else {
    print("The user name is invalid")
}

var userNameTwo: String? = nil
print("The username is \(userNameTwo ?? "undefined")")


//Question2
var rectOneWidth: Double? = 5
var rectOneHeight: Double? = 10

if let width = rectOneWidth, let height = rectOneHeight {
    print("the area of the rectangle is \(height * width)")
}

var rectTwoWidth: Double? = nil
var rectTwoHeight: Double? = nil

if let width = rectTwoWidth, let height = rectTwoHeight {
    print("the area of the rectTwo is \(width * height )")
} else {
    print("the area of rectTwo is unable to be calculated")
}

//Question3
var userOneName: String? = "Anne"
var userOneAge: Int? = 15
var userOneHeight: Double? = 70
if let name = userOneName, let age = userOneAge, let height = userOneHeight {
 let forammtedString = String(format: "%.1f", height / 12)
print("Hello \(name)! You are \(age) years old and \(forammtedString) feet tall")
}

//var userTwoName: String? = nil ?? "User"
//var userTwoAge: Int? = 15
//var userTwoHeight: Double? = nil
//
//if let name = userNameTwo, let age = userTwoAge, let height = userTwoHeight {
//    print("Hello \(name)! you are \(age) years old and")
//}

var favoriteNumber = Bool.random() ? Int.random(in: 0...10) : nil
if favoriteNumber == nil{
print("I don't know your favorite number.")
} else {print("Your favorite number is \(String(describing: favoriteNumber))")
}

// Question5
var numOne = Bool.random() ? Int.random(in: 0...10) : nil
//var numTwo = Bool.random() ? Int.random(in: 0...10) : nil
//var numThree = Bool.random() ? Int.random(in: 0...10) : nil
//
//// append the variable to an optional array
//var numbers = [numOne, numTwo, numThree]
//var sum = 0
//for num in numbers {
//    if let validNumber = num {
//        sum += validNumber
//    }
//}
//print("The sum of our variables is \(sum)")

var numbers = [Int?]()

for _ in 0..<10 {
    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
}

var sum = 0
for num in numbers {
    sum += num ?? 0 // nil-coalescing to unwrap num
}
print("The sum of all the numbers is \(sum)")

// b
//THIS OPERATION WAS LOOPED 10 TIMES DUE TO THE ABOVE RANGE!!!
sum = 0 // clearing sum
var nonNilValueCount = 0
for num in numbers {
    // use optional binding to unwrap num
    if let unwrappedNum = num { // -----THIS IS OPTIONAL BINDING!!!!!!!!!!
        // valid integer here, increment nonNilValueCount by 1
        nonNilValueCount += 1
        sum += unwrappedNum // it can't be num because num is still an optional
    }
}
print("The average of the \(nonNilValueCount) non-nil values is \(sum / nonNilValueCount)")
