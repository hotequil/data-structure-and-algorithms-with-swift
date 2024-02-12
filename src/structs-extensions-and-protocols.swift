import Foundation

struct RGBColor{
  var red: Int
  var green: Int
  var blue: Int

  func printColor(){
    print("rgb(\(red), \(green), \(blue))")
  }
}

var yellowColor = RGBColor(red: 255, green: 255, blue: 0)

yellowColor.printColor()

yellowColor.red = 254

yellowColor.printColor()

extension String{
  var initials: String{
    let words = self.components(separatedBy: " ")
    let firstLetters = words.map{String($0.first!)}

    return firstLetters.joined()
  }

  func getVowelsCount() -> Int{
    var total = 0
    let characterArray = Array(self)

    for letter in characterArray{
      let lowerLetter = String(letter).lowercased()
      
      switch lowerLetter{
        case "a", "e", "i", "o", "u":
          total += 1
        default:
          break
      }
    }

    return total
  }
}

let name = "João Paulo"

print("initials: \(name.initials)")
print("getVowelsCount: \(name.getVowelsCount())")

protocol Items{
  var items: [String] { get set }
}

protocol GetItems{
  func getItems() -> Void
}

class List : Items, GetItems{
  var items: [String] = []

  func getItems(){
    items = ["First item", "Second item"]
  }
}

let list = List()

print(list.items)

list.getItems()

print(list.items)
