func sayHello(){
  print("Hello")
}

sayHello()
sayHello()
sayHello()

func sum(firstNumber: Double, secondNumber: Double) -> Double{
  return firstNumber + secondNumber
}

print(sum(firstNumber: 15, secondNumber: 42))
print(sum(firstNumber: 50.2, secondNumber: 12.4))

func subtract(_ firstNumber: Double, _ secondNumber: Double) -> Double{
  return firstNumber - secondNumber
}

print(subtract(10, 2))
print(subtract(65, 5))

func applyOperation(_ firstNumber: Double, _ secondNumber: Double, operation: (Double, Double) -> Double) -> Double{
  return operation(firstNumber, secondNumber)
}

print(applyOperation(10, 5, operation: sum))
print(applyOperation(10, 5, operation: subtract))

typealias Operation = (Double, Double) -> Double

func getOperation(_ operationName: String) -> Operation{
  switch operationName{
    case "sum":
      return sum
    case "subtract":
      return subtract
    default:
      fatalError("Invalid operation name: \(operationName)")
  }
}

print(getOperation("sum")(20, 30))
print(getOperation("subtract")(40, 10))

let firstResult = applyOperation(
  10,
  5,
  operation: {(firstNumber: Double, secondNumber: Double) -> Double in
    return firstNumber + secondNumber
  }
)

let secondResult = applyOperation(
  20,
  82,
  operation: {
    return $0 - $1
  }
)

print(firstResult)
print(secondResult)
