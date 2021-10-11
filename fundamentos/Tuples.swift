let http404Error = (404, "Not found!");

// Acessar valores da tuple por index
print("The status code is \(http404Error.0)", terminator: "");
print(" and the message error is \(http404Error.1)");

// Nomeando os valores da tupla
let http200Status = (statusCode: 200, message: "Success");
print("The status code is \(http200Status.statusCode)", terminator: "");
print(" and the message is \(http200Status.message)");
// decompondo uma tupla
let (statusCode, message) = http404Error;

print("The status code is \(statusCode)", terminator: "");
print(" and the message error is \(message)");
