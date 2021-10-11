// protocol é analogo a uma interface no c#
protocol IPersonService {
  func sayHello() -> String
  func whoAmI(_ name: String, _ age: Int) -> String
}

class PersonService : IPersonService {

  func sayHello() -> String {
    return "Hello guys!";
  }

  func whoAmI(_ name: String, _ age: Int) -> String {
    return "My name is \(name) and i'm \(age) years old";
  }

}

extension IPersonService {
  func whatIsMyDateOfBith(age: Int) -> String {
    return "Voce nasceu no ano de \(2021 - age)";
  }
}

class Gabriel {
  var name: String;
  var age: Int;
  var personService: IPersonService;

  init(name: String, age: Int, _ personService: IPersonService) {
    assert(name.count != 0, "O seu nome não pode ser vazio.");
    assert(age > 0, "Idade inválida.");

    self.name = name;
    self.age = age;
    self.personService = personService;
  }

  func sayHello() -> String {
    return personService.sayHello();
  }

  func whoAmI() -> String {
    return personService.whoAmI(name, age);
  }

  func whatIsMyDateOfBith() -> String {
    return personService.whatIsMyDateOfBith(age: age);
  }

}


var gabriel = Gabriel(name: "Gabriel", age: 10, PersonService());

print(gabriel.sayHello());
print(gabriel.whoAmI());
print(gabriel.whatIsMyDateOfBith());
