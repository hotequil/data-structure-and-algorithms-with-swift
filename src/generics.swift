func swapNumbers(_ firstNumber: inout Int, _ secondNumber: inout Int){
  let tempFirstNumber = firstNumber
  firstNumber = secondNumber
  secondNumber = tempFirstNumber
}

var firstNumber = 15
var secondNumber = 30

print(firstNumber, secondNumber)

swapNumbers(&firstNumber, &secondNumber)

print(firstNumber, secondNumber)
