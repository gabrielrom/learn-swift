let age = 0;

// assert(age >= 0, "A person's age can't be less than zero.");

// print("O codigo continuo!");

//---------------------------------------------------

if age > 10 {
  print("You can ride the roller-coaster or the ferris wheel.")
} 
else if age >= 0 {
  precondition(age >= 0, "You cannot do that.");

  print("You can ride the ferris wheel.")
} 
else {
  assertionFailure("A person's age can't be less than zero.")
}