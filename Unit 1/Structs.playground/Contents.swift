import UIKit

// structs: is a building block of a method in which we emulate an "object" in Swift

// struct syntax

// SomeStruct below defines an "object"
// Object-oriented programming (OOP) - encapsulates properties and methods on real world obects
struct SomeStruct {
    // definition of a struct includes the following:
    // propertes - variables or constants on the type (struct)
    // initializers - the method in which you create a type
    // methods - function inside of a custom type (struct)
}

struct Resolution {
    // properties
    // stored properties - a property with a default value
    // a propert is a variable or constant
    var width = 0
    var height = 0
}

//================================================
// create an instance of Resolution struct
//================================================

var someResolution = Resolution()

// accessing properties of Resolution
someResolution.width = 1080

print(someResolution)

// structs have a memberwise initializer as opposed to a class that does not
var vga = Resolution(width: 640, height: 480)
print(vga)

//================================================
// structs and enums are ******value types******
//================================================

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd // cinema get a **copy** of hd
// COPY DOES NOT CHANGE THE ORIGINAL OBJECT****

// what is the value of cinema's here // 1920
print(cinema)

cinema.width = 2048

// what is the value of hd's width
print(hd.width)

//======================================================
// using object oriented programming to model a Fellow
//======================================================

enum ProgrammingLanguage {
    case swift
    case objectiveC
    case java
    case javascript
    case python
    case noLanguage
}

struct Project {
    var projectName = ""
    var projectDescription = ""
    var projectLanguage = ProgrammingLanguage.noLanguage
}

enum Cohort {
    case iOS
    case web
}

struct Fellow {
    //======================================================
    // properties -- think of these as attributes
    //======================================================
    var name = "John Appleseed" // stored properties
    var cohort = 0.0
    var programmingLanguages = [ProgrammingLanguage]()
    var gitHubURL = ""
    var linkedInURL = ""
    var hasProgrammingBackground = false
    var projects = [Project]() // projects
    
    //======================================================
    // initializer
    //======================================================
    
    //=================================================
    // methods -- think as them as action
    //=================================================
    
    // class methods
    
    // instance methods -- can ONLY be called using instancename.info()
    // for example gregg.info()
    func info() {
        print("\(name) currently has \(projects.count) portfolio project(s)")
    }
    
    func resume(language: ProgrammingLanguage) {
        // self represents the instance of Fellow that called resume()
        // e.g gregg.resume(language: .swift)
        if self.programmingLanguages.contains(language) {
            print("\(name) can be hired for this \(language) position.")
        } else {
            print("\(name) is not qualified for this position.")
        }
    }
}
// creating instances of "objects"
// creating an instance using the default initializer of Fellow()

var gregg = Fellow()
gregg.name = "Gregg"
gregg.projects.append(Project(projectName: "Hangman", projectDescription: "Hangman command-line-iOS-application", projectLanguage: ProgrammingLanguage.swift))
gregg.info()
//Fellow.info() -- DOES NOT COMPILE

// created an instance of Fellow called oscar and used the memberwise initializer (automatic drop down menu)
var oscar = Fellow(name: "Oscar", cohort: 6.3, programmingLanguages: [.swift], gitHubURL: "https://github.com", linkedInURL: "https://linkedIn.com", hasProgrammingBackground: false)

//instances of Project
let calculatorApp = Project(projectName: "Calculator", projectDescription: "Calculator comand-line appliation", projectLanguage: .swift)
let instagramClone = Project(projectName: "Instagram clone", projectDescription: "Best photo sharing social app", projectLanguage: .java)
// add a project to oscar's portfolio
oscar.projects.append(calculatorApp)
oscar.projects.append(instagramClone)

oscar.info() // 2 projects

oscar.resume(language: .javascript)

oscar.resume(language: .swift)  // 🥳

