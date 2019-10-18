import UIKit


// Questions Review:
// Dictionary Question - given an array of integers return a dictionary of occurences of each integer
// Input = [1, 3, 1, 1, 3, 4, 1, 8, 2, 7, 8]
// Output: [7: 1, 1: 4, 3: 2, 8: 2, 2: 1, 4: 1]
// Goal is to go through the array and keep count of how many times
// the integer appears in the array with a function
// This works because the array is being counted!
func occurences(arr: [Int]) -> [Int: Int] {
    var freqDict = [Int: Int]()
    for num in arr {
        //  let testType = freqDict[1] // This is simply to test and check data type, and if its optional
        if let count = freqDict[num] { // This force unwrapping checks for a value against nil, and enters the loop if not nil. If nil, it enters the else loop
            freqDict[num] = count + 1
            // The first time we visit a number, we need to set the count of
            // occurences to 1. The next time we see that #, we want to increment by 1
        } else { // This else statement allows us to set the key, in case we unwrap to nil
            // appending of an element in the dictionary happens here
            freqDict[num] = 1
        }
    }
    return freqDict
}
let results = occurences(arr:[1, 3, 1, 1, 3, 4, 1, 8, 2, 7, 8])
print(results)

//
//
//func largestValue(in numbers: [Int]) -> Int {
//    var result = numbers[0]
//
////    using guard to et the first element in the array
////    guard numbers.count > 0 else { return -1}
//
////    using guard to get the first element
//    guard let first = numbers.first else { return -1 }
////    if let first = numbers.first {
////         ONLY has access to first inside if let statement
////        print(first)
////    } else {
////        first - does not compile
////    }
//
////    using trailing closure syntax to solve reduce exercise
//    let result = numbers.reduce(first) { prevResult, currentValue in
//        if prevResult > currentValue {
//            return prevResult
//        } else {
//            return currentValue
//        }
//    }
////    numbers.reduce(0, *)
////    numbers.reduce(0.
//    return result
//}
//
//let largestValue = largestValue(in: [56, 100, -56, 0, 208])
//print(largestResult)

var inputStr = "Hello there! How's it going?"


func vowelCount(input: String) -> Int {
    var vowelCount = 0
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "y"]
    
    for char in input {
        if vowels.contains(char){
            vowelCount += 1
        }
    }
    
    return vowelCount
}

print(vowelCount(input: inputStr))

// Question Four
// Write a function called sortedNamesByLastName(in:) that takes in an array of tuples
// of type (String, String) and returns an array of tuples sorted by last name.
// Your function here

//input of our function: unsorted last name array of tuples
// output of our function: sorted by last name array of tuples

func sortedNamesByLastName(in names: [(String, String)]) -> [(String,String)] {
    let result = names.sorted {name1, name2 in
        // < means ascending, or a...z
        // > means descending, or z...a
        name1.1 < name2.1
    }
    return result
}


// Uncomment out the following lines to check your solution
 let firstAndLastTuples = [
     ("Johann S.", "Bach"),
     ("Claudio", "Monteverdi"),
     ("Duke", "Ellington"),
     ("W. A.", "Mozart"),
     ("Nicolai","Rimsky-Korsakov"),
     ("Scott","Joplin"),
     ("Josquin","Des Prez")
 ]
 let expectedOutputFour = [
     ("Johann S.", "Bach"),
     ("Josquin","Des Prez"),
     ("Duke", "Ellington"),
     ("Scott","Joplin"),
     ("Claudio", "Monteverdi"),
     ("W. A.", "Mozart"),
     ("Nicolai","Rimsky-Korsakov")
 ]
print(sortedNamesByLastName(in: firstAndLastTuples))

let outputFour = sortedNamesByLastName(in: firstAndLastTuples)
assert(outputFour.elementsEqual(expectedOutputFour, by: { $0 == $1 }), "Expected output to be \(expectedOutputFour), but found \(outputFour)")

//Collapse


let arr = [4,5,1,-7,-99]
// return an array where elements are less than 5
// output [-99, -7, 1, 4]
print(arr.filter {$0 < 5}.sorted())

let filteredArr = arr.filter { $0 < 5 }
print(filteredArr)

let sortedArr = filteredArr.sorted()

// sorted using closure
let names = ["Aex", "Tiffany", "Antonio", "Genesis"]
// > descending z..->a and < ascending from a...-> z
let sortedNamesUsingClosure = names.sorted {$0 > $1}
print(sortedNamesUsingClosure)

// given an array of names return all the names uppercased
// input: ["Alex", "Tiffany", "Antonio", "Genesis"]
// output: ["ALEX", "TIFFANY", "ANTONIO", "GENESIS"]
// USE MAP, FILTER OR REDUCE TO SOLVE EXERCISE

let namesArr = ["Alex", "Tiffany", "Antonio", "Genesis"]
let filtArr = namesArr.map { $0.uppercased() }
print(filtArr)

// recreating the built-in "map" function
// map function will take 2 parameters,
// first parameter is an array of Ints
// second parameter is a closure
func customMap(arr: [Int], closure: (Int) -> Int) -> [Int] {
    var transformedArray = [Int]()
    
    for num in arr {
        //perform the required transformation based on closure and append the result to the transformed array
        transformedArray.append(closure(num))
    }
    
    return transformedArray
}

// using custromMap function above take in an array of numbers and return
// the squared values of eavh of those elements
// input: [1,2,3,4,5,6,7]
// output: [1,4,9,16,25,36,49]

let numArr = [1,2,3,4,5,6,7]

let squaredArray = customMap(arr: numArr) {$0 * $0}
print(squaredArray)

let numArr2 = [1,2,3,4,5,6,7]

let squaredArray2 = customMap(arr: numArr) { number in
    number * number
}
print(squaredArray2)
