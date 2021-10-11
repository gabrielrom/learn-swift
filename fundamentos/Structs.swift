struct Person {
  var name: String;
  var age: Int;

  func whoAmI() -> Void {
    print("Hello, my name is \(self.name)");
  }

  mutating func addAnotherName(name: String) {
    self.name = name;
  }
}


var gabriel = Person(name: "Gabriel", age: 20);
print("--------------------------------------------");
gabriel.whoAmI();
gabriel.addAnotherName(name: "Joao");
gabriel.whoAmI();   
print("--------------------------------------------");
