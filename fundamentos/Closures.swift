var sayHelloWithMyName = { (name: String, getAge: () -> Int) -> String in 
  return "Hello, my name is \(name), and im \(getAge()) years old";
}

print(sayHelloWithMyName("Gabriel", { () -> Int in return 20; }));
print("--------------------------------------------------------");

var nomes: [String] = ["Gabriel", "Gabriela", "Jose", "Kiud", "Lopo"]; 

// nomes.filter({(value: String) -> Bool in value.hasPrefix("G") }) acucar sintatico.
print(nomes.filter{$0.count <= 2});

// var sayHelloAgain: (String) -> String = sayHelloWithMyName;

// print(sayHelloAgain("Jose"));

let luckyNumbers = [2, 10, 80, 7, 4, 38, 21, 16, 15, 12, 33, 31, 49];

var numbers = luckyNumbers.filter{ $0.isMultiple(of: 2) }.sorted().map{ "\(String($0)) is a lucky number"};

print(numbers);