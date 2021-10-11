// Para declarar uma variavel, utilizamos var <nome da variavel> = <valor da variavel>
var MyName = "Gabriel";

print(MyName);

//Contantes

let dataNascimento = "25/08/2001"; // let é representado como uma constante.

// Declarar multiplas variaveis

var x = 0.0, y = 0.0, z = 0.0;
let a = 50, b = 30, c = 20;

print(x, y, z);
print (a, b, c);

// Tipos nas variaveis

var nome: String = "Jose"; // isso significa que agora a variavel "nome" só vai aceitar valores do tipo string
// nome = 20; -> isso gera um error

/* OBS: É muito raro a gente utilizar a declaração, pois 
  o swift já faz isso para gente através da inferencia de tipos, ou seja, mesmo
  que a gente não passe um tipo o compilador já sabe qual tipo uma variavel pode suportar.
*/

// Tipos em multiplas variaveis

var j, k, u: Int; // isso atribui o tipo Int para todas as variaveis.
j = 20;
k = 89;
u = 10;

print(nome, j, k, u);

var 😁 = "Feliz";

print(😁);

// Print

print("Hello This is a print");

print("But now i dont want broken line.", terminator: "");
print(" This is só easy!");

// String Interpolation 

print("This is string interpolation and my is \(MyName)");
