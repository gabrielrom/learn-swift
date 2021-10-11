// Declarar um array

// 1 - forma Array<tido-dos-valores> = [];
var someArray: Array<String> = ["Gabriel"];

// 2 - forma [<tipo-dos-valos>] = []
var anotherArray: [String] = ["AnotherArray"];

//Adicionar um valor a um array;

someArray.append("Cajo");
print(someArray);

// Adicionar varios valores em um array
anotherArray.append(contentsOf: ["Kayle", "Juan", "Locu"]);
print(anotherArray);

// Criar um array com valores repetidos

var repeatValues = Array(repeating: 1, count: 5);
var repeatValues2 = Array(repeating: 2, count: 3);

print(repeatValues);

var sumArray = repeatValues + repeatValues2;
print(sumArray);

print("Length do array: \(sumArray.count)")
print("Array is empty? | \(sumArray.IsEmpty)");
