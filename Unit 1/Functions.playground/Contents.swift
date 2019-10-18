import UIKit

// Functions: a block of code that enables us to call it anywhere in our project or file

/*
 Vocabulay
 -function
 -argument
 -parameters (internal and external)
 -input
 -output
 -function definition
 -calling a function || invoking a function || executiong function
 */

//=================================================
//      function syntax
//=================================================

//every function begins with the func call

// function definition
func myFirstFunction() {
    print("Happy hump day 🐫")
}

// call or invoke or execute our myFirstFunction
myFirstFunction() // no arguments

//number below is an external parameter name
//x is an internal parameter name
//Int is the data tupe of the function's input
//Int is also the output of this function
//return type syntax is ->
func doubleNumber(number x: Int) -> Int {
    let result = x * 2
    return result
}

let resultOfCalculation = doubleNumber(number: 10) // function takes on argument of type Int, output returned is of type Int
print(resultOfCalculation)

// write a function that adds two a num, then triples it
// (10 + 2) * 3

func alexNumber(number x: Int) -> Int {
    let result = (x + 2) * 3
    return result
}

let resultOfAlexNumber = alexNumber(number: 10)
print(resultOfAlexNumber)

// write a functio that adds an exclamation mark ! to a String
// input: Hello
// output: Hello!

func testRun(x: String) -> String {
    return x + "!"
}

let answer = "Hello"

print(testRun(x: answer))


//=================================================
//      optional types on functions
//=================================================

func githubProfile(age: Int?, employmentStatus: Bool?) -> Bool? {
    var profileComplete: Bool?
    if let _ = age,
        let _ = employmentStatus {
        
        profileComplete = true
    } else{
        profileComplete = false
    }
    return profileComplete // true or nil
}

if let profileComplete = githubProfile(age: 34, employmentStatus: true) {
    print("Profile complete \(profileComplete)")
} else {
    print("Profile incomplete.")
}

