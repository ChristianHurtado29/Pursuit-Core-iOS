import UIKit

var str = "Hello, playground"

// Control Flow, Tuples

// if / else

// block of code { cond in here }

/*
 //====================================
 //                 if
 //==================================
 
 // example 1 - if statement
 if(some conditions is true) {
 execute code
 }
 */

var day = "Friday".lowercased()

if day == "friday" {
    print("woohoo TGIF 🍔🍺")
}

//==============================
//          if / else
//==============================

/*
 // example 2 - if / else statement
 if(some condition is tru) {
 execute this block of code
 } else {
 execute THIS condition if condition is false
 }
 */
day = "Monday".lowercased()

if day == "saturday" {
    print("it's a beach day")
}   else {
    print("it's just another day")
}

day = "monday"

print("today is \(day)")

//=============================
//          if/else if/ else
//=============================

// example 3 - if/else if/else

var temperature: Double = 0
if temperature < 45 {
    print("it's cold, don't forget your gloves!")
    if temperature == 0{ //nested if statement
        print("I'm dead 🥶")
    }
}   else if temperature == 85 {
    print("this is my kind of weather!")
}   else {
    print("the temperature for today is \(temperature)")
}

//=================================================
//       Ternary operator - means 3
//
//(condition - means evaluate to true or false)
//(condition) ? execute if true : execute if false
//                      vs
// if (condition){
//      // code here
// }    else {
//
// }
//=================================================


var age = 20

print(age > 20 ? "you can have that drink 🍺" : "get back to Grandma's house")

// built-in functions we have seen so far include:
/*
 print()
 lowercased()
 round()
 */

//=============================================
//                 Switch Statement
//=============================================

var cohort = "web" // input

switch cohort {
case "iOS":
    print("iOS is awesome!!!") // output
    print("great to have you guys")
case "android":
    print("droids.....")
case "web":
    print("full stack dudes and dudettes")
    fallthrough
    case "backend":
    print("python is cool")
default:
    print("not part of Pursuit")
}


//=============================================
//                 Ranges
//=============================================

let ageRequirement = 18...35 // closed range includes all values
// 18 is the lowerBound and 35 is the upperBound

let halfRangeExample = 18..<35 // does NOT include 35

let decimalRange = 18.5...23.8

//=============================================
//           Switch Statement on Ranges
//=============================================

let classNumber = 6.3 // 2.3 from Coalition for Queens (C4Q) prior to changing into Puersuit

switch classNumber { // can switch on a Range, Bool, Int, Double, Character, String
case 0..<2: // half open range, includes 0 and 1, NOT 2
    print("It's 2014 Coalition for Queens got founded. Now known as Pursuit, also Swift was announced that year at WWDC")
case 2..<3:
    print("It's 2015 and Objective-C is still the leading language to write iOS apps.")
case 3..<4:
    print("2016")
case 4..<5:
    print("2017")
case 5..<6:
    print("2018")
case 6..<7:
    print("2019 and SwiftUI was introduced at WWDC in San Jose")
default:
    print("see you in 2020")
}

//=============================================
//                Tuples
//=============================================

let coordinate = (40.7429595, -73.9551102) // option + click to see tuple is a data type, another data type, anoth....
coordinate.0
coordinate.1

let socials = (twitter:"@alexpaul", instagram:"@alexpaul")
socials.twitter
socials.instagram

//=============================================
//          Switch Statement on Tuples
//=============================================\

let kim = (age: 19, cohort: 6.1, passion: "music") // this is an example of data types being mixed
let heather = (age: 23, cohort: 6.4, passion: "immigration rights")
let nancy = (age: 34, cohort: 6.3, passion: "video games")

let currentFellow = kim

switch currentFellow {
case(18..<21,_,_):
    print("not allowed to drink at events")
case(_,6.3,_):
    print("iOS is awesome!!!!")
case(_,_, "music"):
    print("see you at Pursuit's Game Night, bring the drinks")
default:
    print("not a current fellow")
}

let conditionOne = !(4 < 5) || !(3 > 8)
let conditionTwo = !(!true)

if conditionOne {
 print("A")
} else if conditionTwo {
 print("B")
}
if conditionTwo {
 print("C")
}
print("D")


// format for automatically indentation of code
// command + a, to select all code in Playground
// for formatting: control + 1

var numberOfBagels = 15
let isOverADozen: Bool
if numberOfBagels > 12 {
    isOverADozen = true
} else {
    isOverADozen = false
}
if isOverADozen {
    print("You have more than 12!")
} else {
    print("You have less than 12!")
}

var x = 10
if x = 15 {
 print("x is 15")
} else {
 print("x is not 15")
}

