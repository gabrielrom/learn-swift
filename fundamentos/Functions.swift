func sum(_ a: Int, _ b: Int) -> Int {
  return a + b;
}

print(sum(10, 5));

func returnMessageError(statusCode: Int) -> (Int?, String?) {
  switch statusCode {
    case 200:
      return (statusCode, "Success");
    
    case 400: 
      return (statusCode, "Error");

    default:
      return (nil, nil);
  }
}

let (statusCode, message) = returnMessageError(statusCode: 200);

print("The message of statusCode \(statusCode!) is '\(message!)'")