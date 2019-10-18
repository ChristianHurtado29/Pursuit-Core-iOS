import Foundation

// enumerations or enum: a group of relation value or items, e.g days of the week, mta train lines, number of ifngers, compass points

// enum keyword starts the enum definition
// followed by the name of the enum, which should start with a capital letter to keep with Swift coding convention, also this signifies that the enum is a type to the reader of your code

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum WeekDays {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum Planet {
    case mercuy, venus, earth, mars, jupiter, saturn, uranus, neptune
}

//===============================================================
//  using a switch statement we will switch on an enum instance
//===============================================================

// instance of a String
let name = "Bob"

// creating an instance of the enum WeekDays
let day = WeekDays.tuesday
var weekend = WeekDays.saturday
weekend = .sunday
// var someDay = .friday DOES NOT COMPILE, Can't infer type is enum

switch day {
case.monday:
    print("Back to Pursuit")
case.tuesday:
    print("Enums lab is due")
case.wednesday:
    print("Professional skills")
case.thursday:
    print("Introduction to classes")
case.friday:
    print("Classes and Calculator labs are due")
case.saturday:
    print("What should I do today?")
case.sunday:
    print("Maybe I should do some prep work for class tomorrow")
    }

//===============================================================
//  Iterating through an enum's cases
//===============================================================

// Beverages enum is conforming to the protocol CaseIterable
// by conforming to CaseIterable we are able to get a count of all the cases within the enum

enum Beverage:CaseIterable {
    case coffee, tea, juice
}

print("There are \(Beverage.allCases.count) beverages")

for beverage in Beverage.allCases {
    print("Current beverage is \(beverage)")
}
//
// Question Three
// You are given a Coin enumeration which describes different coin values.
// Write a function called getTotalValue(from:) that takes in an array
// of tuples of type (number: Int, coin: Coin), and returns the total value of all coins in cents.
enum Coin: Int {
  case penny = 1
  case nickle = 5
  case dime = 10
  case quarter = 25
}

// Your function here
// Uncomment the lines below to test your solution
// let coinArr: [(Int, Coin)] = [
//   (10, .penny),
//   (15, .nickle),
//   (3, .quarter),
//   (20, .penny),
//   (3, .dime),
//   (7, .quarter)
// ]
// let expectedTotal = 385
// let total = getTotalValue(from: coinArr)
// assert(total == expectedTotal, "Was expecting \(expectedTotal), but got \(total)")
