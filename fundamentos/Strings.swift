// declare string
let name = "Gabriel";

for character in name {
  print(character);
}

print(name);

// string multiline
let multiline = """
  Lorem Ipsum is simply dummy 
  text of the printing and typesetti
  ng industry. Lorem Ipsum has been the
  industry's standard dummy text ever since the 15
  00s, when an unknown printer took a galley of type and
  scrambled it to make a type specimen book. It has survive d not only five centuries 
"""

print(multiline);

// unicode character
let sparklingHeart = "\u{1F496}"
print(sparklingHeart);


// initializa a empty string
let emptyString = String();
print(emptyString);

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"];

let catString = String(catCharacters);
print(catString);

var hello = "HELLO";
let there = "There";

hello.append(" " + there);

print(hello);

print("The word have \(hello.count) characters.");

// index
let greeting = "Guten Tag!";

print(greeting[greeting.startIndex]) // pega o primeiro caractere
print(greeting[greeting.index(before: greeting.endIndex)])
print(greeting[greeting.index(after: greeting.startIndex)])
print(greeting[greeting.index(greeting.startIndex, offsetBy: 7)])

var welcome = "hello";
welcome.insert("!", at: welcome.endIndex);

print(welcome);

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex));
print(welcome);

// substring
let greeting2 = "Hello, world!";
let index = greeting2.firstIndex(of: ",") ?? greeting2.endIndex;
let beginning = greeting2[..<index];

let newString = String(beginning);
print(newString);


let romeoAndJuliet = [
  "Act 1 Scene 1: Verona, A public place",
  "Act 1 Scene 2: Capulet's mansion",
  "Act 1 Scene 3: A room in Capulet's mansion",
  "Act 1 Scene 4: A street outside Capulet's mansion",
  "Act 1 Scene 5: The Great Hall in Capulet's mansion",
  "Act 2 Scene 1: Outside Capulet's mansion",
  "Act 2 Scene 2: Capulet's orchard",
  "Act 2 Scene 3: Outside Friar Lawrence's cell",
  "Act 2 Scene 4: A street in Verona",
  "Act 2 Scene 5: Capulet's mansion",
  "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0

for scene in romeoAndJuliet {
  if scene.hasPrefix("Act 1 ") {
    act1SceneCount += 1
  }
}

print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

// converter uma string para encondign

let dogString = "Dog‼🐶"
for codeUnit in dogString.utf8 {
  print("\(codeUnit) ", terminator: "")
}
print("")
