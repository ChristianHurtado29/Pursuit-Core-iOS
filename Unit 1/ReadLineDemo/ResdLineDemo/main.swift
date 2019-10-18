//
//  main.swift
//  ResdLineDemo
//
//  Created by Christian Hurtado on 9/27/19.
//  Copyright © 2019 Christian Hurtado. All rights reserved.
//

// Use ReadLine() to get input from the user

import Foundation

print("Enter how many days you will swim, bike or run this week?")
var numberOfDays = Int(readLine() ?? "-1") ?? -1

let workoutCount = numberOfDays
print() // print by itself creates a new line by itself

/*
 repeat {
    // execute code
 } wile (condition is true)
 */

repeat {
    
    if numberOfDays == 0{
    break // exits the loop
    }    else if numberOfDays == -1{
    break
    }
    
    print("enter the type of workout, swim, bike or run: ")
    let workout = readLine()?.lowercased()
    print()
    
    switch workout {
    case "swim":
        print("swim \(Int.random(in: 1...100)) lengths of the pool")
    case "bike":
        print("bike \(Int.random(in: 1...100)) laps around Central Park")
    case "run":
        print("run \(Int.random(in: 1...100)) laps around the track")
    default:
        print("no such workout") // you can enter what you want
    }
    
    numberOfDays -= 1 // decrementing e.g 5 days, 4, 3, 2, 1, 0
    print() // blank print creates a space between your lines
}   while numberOfDays > 0

switch workoutCount {
case -1:
    print("bad data was emtered")
case 1..<5:
    print("Good job this week")
case 5...:
    print("YOU'RE A ROCKSTAR 🏊🏽‍♂️ 🚵🏽‍♂️ 🏃🏽‍♂️ 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥")
default:
    print("Slacker you can do better....")
}



//print("you entered \(numberOfDays + 10)")

//command + b => only builds and checks for errors
//command + r => builds and runs the application
