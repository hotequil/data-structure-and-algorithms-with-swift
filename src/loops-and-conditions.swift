let number = 10

if number % 2 == 0{
  print("Even")
} else {
  print("Odd")
}

switch number % 2{
  case 0:
    print("Even")
  default:
    print("Odd")
}

let temperature = 16

if temperature <= 18{
  print("Cold")
} else if temperature <= 26{
  print("Ok")
} else{
  print("Hot")
}

let letter: Character = "h"

switch letter{
  case "a", "e", "i", "o", "u":
    print("This is a vowel")
  default:
    print("This is a consonant")
}

switch letter{
  case "a"..."f":
    print("First letters group")
  case "g"..."l":
    print("Second letters group")
  case "m"..."r":
    print("Third letters group")
  default:
    print("Fourth letters group")
}

switch number{
  case 0..<20:
    print("First gear")
  case 20..<40:
    print("Second gear")
  case 40..<60:
    print("Third gear")
  default:
    print("Fourth gear")
}

var life = 4

while life > 0{
  print("The life is \(life)")
  life -= 1
}

var tries = 0
var randomNumber = 0

repeat{
  tries += 1
  randomNumber = Int.random(in: 1...8)
} while randomNumber != 8

print("The randomNumber is 8 and it took \(tries) tries")

let surname = "Hotequil"

for letter in surname{
  print(letter)
}

let people = [
  "Deborah": 20,
  "João": 21,
]

for (name, age) in people{
  print("\(name) is \(age) years old")
}

let grades = [9.2, 0, 8, 2.4, 5.6, 7.8, 14, 6.4, -3]

for grade in grades{
  print("Grade is \(grade)")

  if grade < 0 || grade > 10{
    print("Invalid grade: \(grade)")
    break
  }
}
