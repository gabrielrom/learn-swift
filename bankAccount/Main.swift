struct Account {
  var firstName: String;
  var lastName: String;
  var email: String;

  private(set) var accountNumber: String;
  private(set) var amount: Int = 0;

  init(firstName: String, lastName: String, email: String) {
    self.firstName = firstName;
    self.lastName = lastName;
    self.email = email;

    self.accountNumber = String(Int.random(in: 1000...9999));
  }

  mutating func deposit(value: Int) -> Bool {
    if value > 0 {
      amount += value;
      return true;
    }

    return false;
  }

  mutating func withDraw(value: Int) -> Bool {
    if value <= amount {
      amount -= value;
      return true;
    }

    return false;
  }
}

extension Account {

  mutating func updateName(newName: String) {
    self.firstName = newName;
  }
}

func main() {
  var myAccount = Account(firstName: "Gabriel", lastName: "Matheus", email: "gabriel@email.com");

  let isSuccess = myAccount.deposit(value: 300);
  let withDrawSuccess = myAccount.withDraw(value: 100);

  if isSuccess && withDrawSuccess {
    print("Deposito de R$ \(myAccount.amount) para a conta \(myAccount.accountNumber) realizada com sucesso!");
  } else {
    print("Ocorreu um error ao fazer um deposito para a conta de numero \(myAccount.accountNumber).");
  }

  myAccount.updateName(newName: "Jose");

  print(myAccount.firstName);
}

main();