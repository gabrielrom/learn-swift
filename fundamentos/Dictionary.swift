// Declarar uma dictionary

// 1 - FORMA
var statesCapital = Dictionary<String, String>();
// 2 - FORMA
var statesCapital2 = [String:String]();

//Adicionar valor em uma dictionary

// statesCapital["CE"] = "Fortaleza";
statesCapital["BA"] = "Salvador";
statesCapital["MG"] = "Belo Horizonte";

print(statesCapital);

// Acessar um valor
print(statesCapital["CE"] ?? "Não existe");

// REMOVER UM VALOR

statesCapital["MG"] = nil;
print(statesCapital);