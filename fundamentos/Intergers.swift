/*

  Existem dois tipos de intergers:
   
  1) Signed -> inteiros positivos, zero ou negativo
  2) Unsigned -> positivo ou zero

*/

var minValue = UInt8.min; // É do tipo unsigned.
var maxValue = UInt8.max;

print("Min value: \(minValue)");
print("Max value: \(maxValue)");

var minValue32 = Int32.min;
var maxValue32 = Int32.max;

print("Min value of Int32: \(minValue32)");
print("Max value of Int32: \(maxValue32)");

var minValue64 = Int64.min;
var maxValue64 = Int64.max;

print("Min value of Int64: \(minValue64)");
print("Max value of Int64: \(maxValue64)");


var oneMillion = 1_000_000;

print(oneMillion);

var twoThousand: UInt16 = 2_000;
var one: UInt8 = 1;
var thowThousandAndOne = twoThousand + UInt16(one);

print(thowThousandAndOne);


typealias Sample = UInt8;

var maxSampleValue = Sample.max;
print(maxSampleValue);