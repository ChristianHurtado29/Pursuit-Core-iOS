import UIKit

// Big O NotationL calculating the performance of a given algorithm

// Big O has two performance metrics:
// 1. time complexity
// 2. space complexity

// fastest to slowest run time
// O(1), O(log n), O(n), O(n log n), O(n^2), O(2^n), O(n!)

// O(1) - constant time
func printFirstElement(arr: [String]) {
    guard let first = arr.first else {
        return
    }
    print(first)
}

printFirstElement(arr: ["Greg", "Matt"])

let fellows = ["Mel", "Yulia", "Stephanie"]
fellows [2] // still constant time

let firstTwoFellows = fellows.prefix(10)

print(firstTwoFellows)

let numbers: Set = [1,2,3,4]
numbers.contains(3) // O(1)

//================================
// O(log n) - logarithmic time
// on every iteration the problem either increments or decrements by half
//================================
let n = 16
var j = 1
while j < n {
    j *= 2 // 2, 4, 8, 16
}

var count = 0
while count < 10{ // THIS IS A LINEAR RUNTIME
    print(count)
    count += 1
}

//================================
// O(n)
//================================

// n represents the number of elements in the collection
for fellow in fellows {
    print(fellow)
}


//===================================
// O(n log n),
//===================================

for _ in 0..<10{ // O(n) => 10
    var j = 1
    while j < n { // O(log n) => 4
        j *= 2 // 2, 4, 8, 16
    }
}

//===============================
// O(n^2) - quadratic
//===============================

let list = [1,2,3,4,5,6,7,8,9,10]
for i in 0..<list.count {
    for j in 0..<list.count {
        print("\(list[i]) * \(list[j]) = \(list[i] * list[j])")
    }
}

//=========================================
// deriving compound run times
//=========================================
func compoundRuntimes(arr: [Int]) {
  for _ in 0..<1000 {
    print("Hi!")
  }
  for num in arr {
    print(num)
  }
  for (indexOne,numOne) in arr.enumerated() { //O(n)
    for (indexTwo, numTwo) in arr.enumerated() { //O(n)
      if indexOne != indexTwo && numOne == numTwo {
        print("It's a match! \(numOne) and \(numTwo) are equal")
      }
    }
  }
}
// solution:
