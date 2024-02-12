class Person{
  var name: String
  var isMarried: Bool
  var age: Int = 0

  var socialStatus: String{
    get{
      if isMarried{
        return "Is married!"
      } else{
        return "Is single!"
      }
    }
    set{
      isMarried = newValue == "married"
    }
  }

  static let animalClass = "mammal"

  init(name: String, isMarried: Bool){
    self.name = name
    self.isMarried = isMarried
  }

  func repeatSentence(sentence: String) -> Void{
    print(sentence)
  }
  
  func introduce() -> String{
    return "My name is \(name)"
  }

  func getInfo() -> String{
    return "This is a \(Person.animalClass)"
  }
}

let firstPerson = Person(name: "Jack", isMarried: false)

print(firstPerson.socialStatus)

firstPerson.age = 32
firstPerson.isMarried = true

print(firstPerson.socialStatus)

firstPerson.socialStatus = "single"

print(firstPerson.socialStatus)

firstPerson.socialStatus = "married"

print(firstPerson.socialStatus)

firstPerson.repeatSentence(sentence: "Hello")

print(firstPerson.introduce())
print(firstPerson.getInfo())

class Student : Person {
  var rm: String

  init(name: String, isMarried: Bool, rm: String){
    self.rm = rm
    super.init(name: name, isMarried: isMarried)
  }

  override func introduce() -> String {
    return "\(super.introduce()) and my rm is \(rm)"  
  }
}

let firstStudent = Student(name: "Ralph", isMarried: true, rm: "RM1234")

print(firstStudent.introduce())
print(firstStudent.rm)
