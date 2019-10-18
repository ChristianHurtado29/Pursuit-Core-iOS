//import UIKit
//
//var str = "Hello, playground"
//
////===========
////  Question1
////===========
//
//var grade1 = 7.0
//var grade2 = 9.0
//var grade3 = 5.0
//
//var classAvg = 7.0
//
//var grade = 7
//
//if grade > 7{
//    print("Above average! 😊")
//}   else{
//    print("Below average 😢")
//}
//
////==========
////  Question2
////==========
//
////You are given a number. Print even if the number is even or odd otherwise.
//
//
//let number = 2
//
//var even = number % 2 == 0
//var odd = number % 2 != 0
//
//if even{
//    print("even")
//}   else{
//    print("odd")
//}
//
////==========
////  Question3
////==========
//
////You are given two numbers `a` and `b`. Print `"divisible"` if `a` is divisible by `b` and `"not divisible"` otherwise.
//
//
//var a = 13
//var b = 3
//
//if a % b == 0{
//    print("divisible")
//}   else{
//    print("not divisible")
//}


//======================
//  Question4
//======================
//You are given three variables `a`, `b` and `c`. Check if at least two variables have the same value. If that is true, print `"At least two variables have the same value"` otherwise print `"All the values are different"`.
//
//```swift

//var a = 1
//var b = 2
//var c = 1
//
//if a == b || a == c || b == c{
//    print("At least two variables have the same value")
//}   else{
//    print("All the values are different")
//}

//===================
// Question5
//===================

//You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days). Given `baconAge` and `eggsAge` (both in days) determine if you can cook bacon and eggs, or which ingredients you need to throw out. If you can cook bacon and eggs, print `"you can cook bacon and eggs"`. If you need to throw out any ingredients, for each one print a line with the text `"throw out"` + bacon or eggs.
//
//```swift
//var baconAge = 6 // the bacon is 6 days old
//var eggsAge = 12 // eggs are 12 days old
//
//if baconAge > 7{
//    print("throw out bacon 🤮")
//}
//if eggsAge > 21{
//print("throw out eggs 🤢")
//}
//if baconAge < 7 && eggsAge < 21{
//    print("you can cook bacon and eggs! 😋")
//}

//==========================
//  Question6
//==========================
//You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.
//The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print `"Leap year!"` or `"Not a leap year!"` depending on the year you are provided.

//let year = 2014
//
//let conditionOne = year % 4 == 0 && year % 100 != 0 || year % 400 == 0
//
//if conditionOne{
//    print("Leap year!")
//}   else{
//    print("Not a leap year!")
//}

//===========================
//  Question7
//===========================

//If you use `random()` it will give you a random number within a specified range. Generate a random number and use it to simulate a coin toss. Print `"heads"` or `"tails"`.
//
//let randomNum = Int.random(in: 0...100)
//
//if randomNum % 2 == 0{
//    print("Heads!")
//}   else{
//    print("Tails!")
//}
//
//===========================
//  Question8
//===========================

//var a = 5
//var b = 6
//var c = 3
//var d = 4

//if a < b && a < c && a < d{
//    print(a)
//}
//if b < a && b < c && b < d{
//    print(b)
//}
//if c < a && c < b && c < d{
//    print(c)
//}
//if d < a && d < b && d < c{
//    print(d)
//}

// 3 == 2 || 9 == 9
//!(3 > 3)
//!(true || false)
//(4 < 3 || 4 > 3) && ("Message: " == "Message: ")
//!(3 != 3)

//let x = 5 > 4
//let y = 100 / 10 == 1
//let z = 6
//
//x && y
//x || y || z == 1
//("five" == "5" || "FIVE" == "five" || 5 == 3 + 2) && !y
//(x && y) || z > 6
//!(z < 6) && !y && !x

//let numberOfPages: Int = 500
//let numberOfChapters = "For Whom The Bell Tolls"
//let nameOfBook: Int = 14
//let yearPublished = "Nineteen-thirty-five"
//

//var n = 7.5

//var a = 20
//var b = 5
//var c = 4
//
//a += b
//b -= c
//b * (c + a)
//(b * c) + a
//b %= a
//b %= c
//
//print(a + b + c)
//

let div = 11 / 4
let div2 = 11.0 / 4.0

var n = 7.5

//var width: Double = 49.8
//var extraWidth: Float = 10.1
//let totalWidth = width + extraWidth
//print(totalWidth)

//a. It will print 48.9
//b. It will print 50.0
//c. It will print 50
//d. It will give a compile-time error
//

//var a = 123
//
//var b = a % 10
//
//print(b)

//var number = 5
//
//if number % 2 == 0{
//    print("even")
//}   else{
//    print("odd")
//}

//var a:Double = 2.0
//var b:Double = 5.0
//
//var avg = (a + b) / 2

//var finalsGrade = 2.0
//var midtermGrade = 4.0
//var projectGrade = 3.0
//
//var weightedFinals = (finalsGrade / 100) * 50
//var weightedMidterm = (midtermGrade / 100) * 20
//var weightedProject = (projectGrade / 100) * 30
//
//var classGrade = weightedFinals + weightedMidterm + weightedProject
//
//print("The grade for the class is \(classGrade)")
//

//Input:
//var mealCost:Double = 3.5
//var tip:Int = 20
//var tipTotal = (mealCost / 100) * Double(tip)
//
//var totalCost:Double = mealCost + tipTotal
//
//print("The total cost of the meal is \(totalCost)")

//Input:
//var grade1 = 7.0
//var grade2 = 9.0
//var grade3 = 5.0
//
//var yourGrade = 8.0
//
//var classAvg = (grade1 + grade2 + grade3) / 3
//
//if yourGrade > classAvg{
//    print("above average 🥳")
//}   else{
//    print("below avg 👎🏽")
//}

//Output:
//"above average"

//A farmer is harvesting wheat from a number of wheat fields, given in a variable numberOfFields of type Int. Each field produces the same quantity of wheat given in a variable wheatYieldof type Double. Sometimes the harvest is increased by 50% due to favorable weather conditions. You are given this information in a variable weatherWasGood of type Bool.


//var numberOfFields = 5
//var whereYieldOf = 10.0
//
//var totalHarvest = Double(numberOfFields) * whereYieldOf
//
//var weatherWasGood = Int.random(in: 1...100)
//
//var goodWeather = (totalHarvest / 2) + totalHarvest
//
//
//if weatherWasGood % 2 == 0{
//    print("There was good weather, our total harvest is \(goodWeather)")
//}   else{
//    print("The weather was ordinary, our total harvest is \(totalHarvest)")
//}

//if conditionOne{
//    print("Leap year!")
//}   else{
//    print("not a leap year!")
