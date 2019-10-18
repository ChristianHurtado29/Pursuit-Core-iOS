import UIKit

// Closures

//general Closure syntax --
//{ (parameters) -> return type in
//    statements
//}
//a closure is a first class citizen
// first class citizen is a code that can be called and used similar to variables

//Closures: is a block of code that can be called in our program similar to a function. In fact a closure is a type of function. We will see and recognize differences as we journey through this course.

//========================================
//      closure syntax
//========================================

// returns void
// internal parameter name are used in the function body definition
// external parameter name is used by the caller, they will see the external name e.g printGreeting(name: "Bob")

// default parameter value we will set on age is 21
// in the case the caller of our function does not provide age argument we will default to showing 21
// we set default (=) value on the data type that we are interested in, e.g age: Int = 21

// the underscores in our func are to call the string/int if you want to print them out, you can call for them as their data types in the green function call
func printGreeting(_ name: String,_ age: Int = 21) {
// >>-- we can swap 'name' if its not being called in the print because we don't need to call for it. It can be swapped with an underscore
//code that you want run
  print("Good morning \(name), welcome iOS 6.3, your age is \(age)")
}
// call function
printGreeting("Alex")

for _ in 0..<4 {
    print("Good Friday morning") // default newline character for terminated "\n"
}

//===========================
//  closeure syntax
//===========================

/*
 { (parameters) -> return type in
   // code here
 }
 */

// closures:
// - can be passed as function parameters
// - can be assigned into a variable or constant
// - can be returned from a function

// greeting is a closure, does not have parameters, does not return a value, returns void (nothing)
let greeting = {
    print("Welcome to closures.")
}

greeting()

// closure that takes parameters and returns a value
let square = { (num: Int) -> (Int) in // in is mandatory
    return num * num
}
print(square(10))

// this is as shorthanded as it can go
let squareShortHandSyntax: (Int) -> (Int) = { $0 * $0 }

// refactoring square closure above to make use of shorthand closure syntax and shorthand argument names
// $0 is the first parameter, here we only have one parameters, if you have e/g two parameters it would be $0 and $1 and so on with their respective indices
let squareShortHandsSyntax: (Int) -> (Int) = { $0 * $0 }
print(squareShortHandsSyntax(25)) // 25 * 25 = 625

// practice, create add, subtract, multiply and divide using shorthand closure syntax and arguent names

// subtract trailing closure implicitly returns the value of the subtraction. Returk keyword is not needed.
let subtractSyn: (Int, Int) -> (Int) = { $0 - $1 }
print(subtractSyn(5, 2))

//=================================================================================
//  closures as function parameters
// closures are "first class citizens" meaning we can pass closures like we do variables in funtions
//=================================================================================

// the name of the closure could be anyname, here we are simply using the word "closure" but it could be "action", "myClosure"..........

func helloGreeting(closure: (String) -> ()) {//
    print("Hello iOS 6.3")
    closure("Heather")
}

helloGreeting { (str) in
    print("Hello \(str), it's Friday")
}

helloGreeting { name in
    print("Hello, \(name) it's Friday 🚀")
}

func printClosure(action: () -> ()) {
    action()
}

// defined a closure names printingAction
// no parameters, no return
let printingAction = {
    print("inside printClosure trailing closure")
}
printClosure(action: printingAction)

//printClosure() {
//    print("inside printCloser trailing closure")
//}

//====================================================
// use some built-in higher order functions (closure)
// - map {....} - transforms a value. e.g 4 * 4 = 16/ returns an array of collection
// - filter {....} - filters values based on a condition return an array of collection
// - reduce (0, +) - takes an initial value, e.g 0 and a closure e.g + (addition) and combines all the values and returns the result
// - compactMap {....} - returns non-nil values
// - sorted { > } - you provide a sorting closure and it returns base on the sorting algorithm
// - forEach {....} - similar to the for-in loop\
//========================

// given an array of integers return an array where each value is squared
// input: [1, 2, 3, 4, 5, 6]
// output: [1, 4, 9, 16, 25, 36]

let list1 = [1, 2, 3, 4, 5, 6]
func returnSquares(arr: [Int]) -> [Int] {
    var squares = [Int]()
    for num in arr {
        squares.append(num * num)
    }
    return squares
}
print(returnSquares(arr: list1)) //[1, 2, 3, 4, 5, 6]

//=======================================
// using map
//=======================================

let usingMapResult = list1.map { $0 * $0 } // this zero simply means current element, not index place
print(usingMapResult)

//=======================================
//  using filter
//=======================================
// given an array of fellows return only fellows where their names begin with "a" case-insensitive
// their names begin with "a" case-insensitive
// input = ["George", "Tom", "Ahad", "James", "Ameni"]
// output = ["Ahad", "Ameni"]
let list2 = ["George", "Tom", "Ahad", "James", "Ameni"]
let filteredResults = list2.filter { $0.lowercased().hasPrefix("a") }

print(filteredResults)

//=============================================
//      using reduce
//=============================================
// given an array of integers return the sum
// input: [10, -10, 50, 20]
// output: 70

let list3 = [10, -10, 50, 20]
let reducedResults = list3.reduce(0, +)

print(reducedResults)

//=============================================
//      using compactMap
//=============================================
// given an optional array of integers return ONLY valid integers
// input: [nil, 56, 12, -89, nil, nil, 0, 6]
// output: [56, 12, -89, 0, 6]
let list4 = [nil, 56, 12, -89, nil, nil, 0, 6]
let compactedResults = list4.compactMap { $0 }
print(compactedResults)
