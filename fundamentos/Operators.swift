// Addition (+)
let sum = 1 + 2; print(sum);
// Subtraction (-)
let sub = 5 - 3; print(sub);
// Multiplication (*)
let mult = 2 * 3; print(mult);
// Division (/)
let div = 10.0 / 2.5; print(div);

// Operador ternario

let height = 40;
let hasHeader = false;
let rowHeight = height + (hasHeader ? 50 : 20);

print(rowHeight);

// Operador de intervalo

for index in 1...5 {
  print("\(index)");
}

let names = ["Gabriel", "Jose", "Marcos", "Joao"];

// retira um valor.
for i in names[..<1] {
  
  print(i);
}

print(names.contains("Gabriel"));