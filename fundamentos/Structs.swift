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

struct Employee {
  let name: String;
  var vacationAllocated = 14;
  var vacationTaken = 0;

  var vacationRemaining: Int {
    get {
      vacationAllocated - vacationTaken;
    }

    set {
      vacationAllocated = vacationTaken + newValue;
    }
  }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14);
archer.vacationTaken += 4;
print(archer.vacationRemaining);
archer.vacationTaken += 4
print(archer.vacationRemaining);

print("===============================================================");

struct Game {
  var score = 0 {
    willSet {
      print("The score \(score) value will set to \(newValue)");
    }
    

    didSet {
      print("Score is now \(score)");
      print("Old value was \(oldValue)");
    }

  }
}

var game = Game();
game.score += 2;

print("===============================================================");
struct App {
  var contacts = [String]() {
    willSet {
      print("Current value is: \(contacts)")
      print("New value will be: \(newValue)")
    }

    didSet {
      print("There are now \(contacts.count) contacts.")
      print("Old value was \(oldValue)")
    }
  }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

print("===============================================================");
struct BankAccount {

  private var funds = 0 {
    didSet {
      print("The value in the past is \(oldValue)");
      print("Now the funds will be R$ \(funds).");
    }
  };

  mutating func deposit(_ value: Int) {
    funds += value;
  }

  mutating func withDraw(_ value: Int) -> Bool {
    if funds >= value {
      funds -= value;
      return true;
    }

    return false;
  }

  func getFunds() -> String {
    return "R$ \(funds)";
  }
}

var gabrielAccount = BankAccount();
gabrielAccount.deposit(200);
var success = gabrielAccount.withDraw(50);

if success {
  print("The withdraw was make successfully");
} else {
  print("Nao funcionou!");
}

print(gabrielAccount.getFunds()); 

