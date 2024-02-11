let myAge: UInt8 = 21

print("My age: \(myAge)")
print("Int maximum number: \(Int.max)")
print("Int minimum number: \(Int.min)")
print("UInt8 maximum number: \(UInt8.max)")
print("UInt8 minimum number: \(UInt8.min)")

var gender: Character = "M"

print("Gender: \(gender)")

let phrase = "It is a long established fact that \na reader will be distracted by the readable \ncontent of a page when looking at its layout"

print(phrase)

// This is a Double
var balance = -200.50

print(type(of: balance))
print("Balance: \(balance)")

let grade: Float = 8.5
let text = "Grade: \t\(grade)"

print(type(of: grade))
print(text)

let isLegalAge = myAge >= 18

print("Is legal age: \(isLegalAge)")

let address: (street: String, number: Int, city: String, country: String) = ("Scheewege", 8750, "Wingene", "Belgium")

print(type(of: address))
print("""
Street: \(address.street)
Number: \(address.number)
City: \(address.city)
Country: \(address.country)
""")

let (street, _, city, _) = address
print("Street is \(street) and city is \(city)")
