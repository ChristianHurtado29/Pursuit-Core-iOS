import UIKit

var str = "Hello, playground"

var myString = "abcdcba"
for character in myString {
 if character <= "b" {
  print(character, terminator:"")
 }
}
