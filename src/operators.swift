let firstNumber = 10
let secondNumber = 20
var thirdNumber = 0

print("Sum: \(firstNumber + secondNumber)")
print("Subtract: \(firstNumber - secondNumber)")
print("Multiplication: \(firstNumber * secondNumber)")
print("Division: \(firstNumber / secondNumber)")
print("Division rest: \(firstNumber % secondNumber)")

thirdNumber += firstNumber
thirdNumber -= secondNumber
thirdNumber *= firstNumber
thirdNumber /= secondNumber
thirdNumber %= firstNumber

print("Third number is \(thirdNumber)")

let yes = true, no = false

print("Negation")
print(!yes)
print(!no)

print("And")
print(yes && no)
print(yes && yes)
print(no && yes)
print(no && no)

print("Or")
print(yes || no)
print(yes || yes)
print(no || yes)
print(no || no)

print("Comparison")
print(firstNumber > secondNumber)
print(firstNumber < secondNumber)
print(firstNumber >= secondNumber)
print(firstNumber <= secondNumber)
print(firstNumber == secondNumber)
print(firstNumber != secondNumber)

print("Ternary: \(firstNumber == 10 ? "is ten" : "isn't ten")")

let numbers = 1...10

print(type(of: numbers))

for number in numbers{
  print("Number is \(number)")
}

let newNumbers = 1..<10

print(type(of: newNumbers))

for number in newNumbers{
  print("Number is \(number)")
}
