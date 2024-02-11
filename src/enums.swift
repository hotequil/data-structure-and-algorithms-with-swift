enum Compass{
  case north
  case east
  case west
  case south
}

let direction = Compass.south

print(direction)

switch direction{
  case .north:
    print("Let's go to north")
  case .east:
    print("Let's go to east")
  case .west:
    print("Let's go to west")
  case .south:
    print("Let's go to south")
}

enum SeatPosition: String{
  case aisle = "intern"
  case middle = "center"
  case window = "extern"
}

let seat = SeatPosition.middle

print(seat)
print(seat.rawValue)

enum Month: Int{
  case january = 1
  case february
  case march
  case april
  case may
  case june
  case july
  case august
  case september
  case october
  case november
  case december
}

print(Month.june)
print(Month.june.rawValue)

enum Measure{
  case weight(Double)
  case age(Int)
  case size(width: Double, height: Double)
}

let weightMeasure: Measure = .weight(76.2)
let ageMeasure: Measure = .age(21)
let sizeMeasure: Measure = .size(width: 0.6, height: 1.8)

switch ageMeasure{
  case .weight(let weight):
    print("Weight: \(weight)")
  case .age(let age):
    print("Age: \(age)")
  case .size(let width, let height):
    print("Size: \(width) and \(height)")
}
