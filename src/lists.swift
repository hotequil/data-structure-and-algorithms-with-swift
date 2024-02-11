let emptyList: [String] = []
let firstLanguagesList: [String] = ["JavaScript", "Python", "Java"]
var secondLanguagesList = ["Swift", "C++", "Go"]

if emptyList.isEmpty{
  print("The list is empty")
}

print("The first list has \(firstLanguagesList.count) languages")

secondLanguagesList.append("C#")
secondLanguagesList.append("TypeScript")

print("The second list has \(secondLanguagesList.count) languages")

var mergedLanguagesList = firstLanguagesList + secondLanguagesList

mergedLanguagesList.insert("Rust", at: 2)

print("The merged list has \(mergedLanguagesList.count) languages")

for index in 0...mergedLanguagesList.count - 1{
  print("Language: \(mergedLanguagesList[index])")
}

let emptyStates: [String: String] = [:]
var southStates: [String: String] = ["PR": "Paraná", "SC": "Santa Catarina", "RS": "Rio Grande do Sul"]

if emptyStates.isEmpty{
  print("The list is empty")
}

if let sc = southStates["SC"]{
  print("The state is \(sc)")
}

var rs = southStates["RS"]!

southStates["RS"] = rs.uppercased()
rs = southStates["RS"]!

print("The next state is \(rs)")

southStates.removeValue(forKey: "PR")

print("The dictionary size is \(southStates.count)")
print("PR: \(southStates["PR"] ?? "not found")")

// Non-repeated list
var cooperatives: Set<String> = [
  "Sicredi",
  "Sicoob",
  "Cresol"
]

let result = cooperatives.insert("Coamo")

print("Result item: \(result)")
print("Cooperatives size is \(cooperatives.count)")

cooperatives.remove("Cresol")

print("Cooperatives are \(cooperatives)")

for cooperative in cooperatives{
  print("Cooperative: \(cooperative)")
}

if cooperatives.contains("Sicoob"){
  print("There is Sicoob in cooperatives")
}

let myFatherCooperatives: Set<String> = ["Sicredi", "Sicoob", "Viacredi"]
let favoriteCooperatives = cooperatives.intersection(myFatherCooperatives)

print("Favorite cooperatives: \(favoriteCooperatives)")

let mergedCooperatives = cooperatives.union(myFatherCooperatives)

print("Merged cooperatives: \(mergedCooperatives)")

let onlyNotRepeatedCooperatives = cooperatives.subtracting(myFatherCooperatives)

print("Only not repeated cooperatives: \(onlyNotRepeatedCooperatives)")
