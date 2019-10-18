//import UIKit
//
//var str = "Hello, playground"
////
//print(str)
//print(str)
//print(str)
//print(str)
//print(str)
//
//=====================================
// range - closed range and half open
//=====================================
//
//let closeRange = 1...10 // inclusive or closed range
//let halfRange = 1..<10 // exclusive, does not include 10
//
//
//=====================================
//          for in loop
//=====================================
//for number in 1...10 { // inclusively prints 1 to 10
//    // print() default terminator is "\n"
//    // the new line character
//   //print(number, terminator:" ") // default parameter in "\n" replace with " "
//
//if number == 10 {
//    print(number, terminator:" ")
//}   else {
//    print(number, terminator: "💀")
//}
//}
//
//=====================================
//   preview using loops with arrays
//=====================================
// array of Strings
//let pursuitStacks: [String] = ["iOS", "web", "android"]
//for pursuitClass in pursuitStacks {
//    // printing using String Interpolation
//    print("Pursuit class is \(pursuitClass)")
//}
//
//let fellows = ["Tiffany", "Yulia", "Joshua", "Maitree"]
//for fellow in fellows {
//    if fellow == "Joshua" {
//        print("\(fellow) 🌳")
//    }
//    print("the fellow name is \(fellow)")
//}
//
//let temperatures = [69, 75, 87, 64, 64, 61, 68]
//for temp in temperatures  {
//switch  temp {
//case 87...:
//    print("Catch me at the beach ☀️")
//default:
//    print("Just another day")
//}
//}
//
//let message = "Hpapy Monday iOS 6.3"
//for _ in 0..<5 {
//    // first time it is 0
//    // next time it is 1
//    // next time it is 2
//    // next time it is 3
//    // next time it is 4
//    print(message)
//}
//
////=======================================
////      control transfer statement
////       where, break, continue
////=======================================
//// the question asks you where to print only numbers eninf in 5 inclusively
//for number in 1...100 where number % 10 == 5 {
//    print("\(number)'s last digit is 5")
//}
//
//// break - exit loop or end loop, stop looping
//for num in 1...50 {
//    if num == 7 {
//        print("Happy birthday, Miles, you're only \(num) years old")
//        break // <----Break
//    }   else {
//    print("Not your birthday yet")
//    }
//}
//
//// continue
//for num in 1...10 {
//    if num % 2 == 0 { // even numbers
//        // increment (add)
//        // increment to next value
//        // e.g if current value is 2
//        // 3 mod (modulo operator - remainder) 2 or 2 % 2 is 0 s
//        // next value is
//        continue // to the next value
//    }
//    print(num)
//}
//
////==========================
////      while loop
////==========================
////var seconds = 30
////while seconds >= 0 {
////    if seconds == 0{
////        print("🚀")
////    } else{
////    print("countdown \(seconds)....")
////    // while condition NEEDS a way to stop the loop
////    // or it will run infinetely (forever) until your playground explodes hahahaha runs out of resource
////
////    // without decrementing seconds the while loop will be in what's known as an infinite loop
////    seconds -= 1 // decrementing seconds by 1
//
//var myNum = 8
//for number in 4..<8{
// if number == 7 {
// break
// } else {
// myNum += number
// }
//}
//print(myNum)
//
////for numbers in 1...150{
////print(numbers)
////}

//for numbers in 20...150{
//    if numbers == 31{
//        print(numbers)
//}
//    if numbers == 35{
//        print(numbers)
//}
//    if numbers >= 40{
//        if numbers <= 60{
//        print(numbers)
//}
//}
//}
//var i = 5
//
//while (i > 3) {
//    i += 1
//}

//var i = 5
//
//while (i > 3) {
//    i += 1
//    if i == 9{
//    break
//    }
//    print(i)
//}

//var i = 5
//while (i > 3) {
//    i += 1
//    if i % 2 == 0{
//        if i == 1005{
//            break
//        }
//}
//}
//for i in 1...10 {
//    if (i >= 4 && i <= 7){
//        continue
//    }
//    print(i)
//}
//

//for i in 1...10 {
//    if (i >= 4 && i <= 7){
//        break
//    }
//    print(i)
//}
//
//var i = 5
//
//while (i > 3) {
//    i += 1
// if i == 1004 {
//    break
//    } else
//}
//print(i)
//

//let appInfo = (name: "myCoolApp", version: 0.4)
//switch appInfo {
// case (_, 0.0..<1.0):
// print("\(appInfo.0) hasn't released yet")
// case ("myCoolApp", _):
// print("Thanks for looking at myCoolApp!")
// default:
// print("I'm not quite sure what you are looking at")
//}
//
//let currentWeather = "rain"
//switch currentWeather {
//case "sunny":
//    print("Today it is \(currentWeather) ☀️")
//case "snow":
//    print("Stay home today because of \(currentWeather) ❄️")
//case "rain":
//    print("GRAB AN UMBRELLA ELLA ELLA ☔️")
//default:
//    print("who knows?! Not me!")
//}

//let firstName = "John"
//let lastName = "Appleseed"
//
//let fullName = ("The fellow's full name is \(firstName) \(lastName)")
//print(fullName)

//var tempInFahrenheit = 40
//
//switch tempInFahrenheit {
//case 0...40:
//    print("It is cold!")
//case 85...100:
//    print("It is hot!")
//    default:
//print("weather is neither hot or cold")
//}

//let randomNum = 4
//
//if randomNum % 2 == 0{
// print("You win!")
//}
//else {
// print("You lose!")
//}

//Example 1:

//var numberOfSides = 4
//switch numberOfSides {
//case 3:
//    print("Triangle")
//case 4:
//    print("Square")
//case 5:
//    print("Pentagon")
//case 6:
//    print("Hexagon")
//case 7:
//    print("Heptagon")
//case 8:
//    print("Octagon")
//case 9:
//    print("Nonagon")
//case 10:
//    print("Decagon")
//default:
//    print("Error!")

//Output:
//Square

//Example 2:
//
//Input:
//var numberOfSides = 2

//Output:
//Error

//Numeric Score     Letter Grade
//100     A+
//90 - 99    A
//80 - 89    B
//70 - 79     C
//65 - 69     D
//Below 65     F

//var score random.int:0...100
//score 100 in 0...100{
//switch score {
//case 100:
//    print("A+")
//case 90...99:
//    print("A")
//case 80...89:
//    print("B")
//case 70...79:
//    print("C")
//case 65...69:
//    print("D")
//case 0...65:
//    print("F")
//    else:
//        break
//}


//====================================================================
//      Loops part 2!
//====================================================================

var str = "Hello, playground"

// using the str variable print "Hello, playground" five times using a for in loop

    for _ in 1...5 {
        print(str) // 1, 2 3, 4, 5
}

for num in 1...5 {
    print(num)
}

var seconds = 10
while seconds >= 0 { // body, scope, block or the while all refers to what's between {the open curly brackets and the closed bracket }
    print(seconds)
    seconds -= 1 // decrements the seconds by 1
}



//=================================
//     repeat-while loop
//=================================
var isPlaying = false
var currentLevel = 1
let finalLevel = 10
repeat {
    // code here
    // using String interpolation to show current level
    if isPlaying{
        print("playing level \(currentLevel)")
           if currentLevel == finalLevel {
               print("I will definetely recommend this game.")
               isPlaying = false // stops the game
           }
        currentLevel += 1
    }   else {
     // player is seeing our game for the first time
        print("Trying out Pursuit Arcade for the first time.")
        isPlaying = true // in a macOS command line app you can prompt the user to continue or not, this wouod set isPlaying to ttue or false
    }
}   while isPlaying == true

//===============================
//      nested loops
//===============================

// multiplication table from 1 to 5
for i in 1...5 { // outer for loop - executes 5 times
    // first time it enters the for loop i is 1
    for j in 1...5 { // inner for oop - executes 5 times
        print("\(i) * \(j) = \(i * j)")
        
    }
}

//=====================================
//          labels in loops
//=====================================
let product = 50

outerloop: for i in 1...10 {
    innerloop: for j in 1...10 {
        if i * j == product {
            print("product was found by multiplying \(i) * \(j)")
            break outerloop // if you want to look for more cases of 50, instead of break use continue
        } else {
            print("keep searching...")
        }
    }
    innerloop2: for _ in 1...5 {
        print("Hello, Matt")
    }
    print("done running outerloop...")
}
