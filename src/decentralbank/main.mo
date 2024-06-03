import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor debank{ //class declaration
  var currentvalueofbank: Nat = 1000; //declaring a variable as a natural number
  currentvalueofbank := 500; //reassigning the value of the variable

  public func deposit(amount: Nat){  //natural number
    currentvalueofbank += amount;
      Debug.print(debug_show(currentvalueofbank));  
  };

  public func withdraw(amount: Nat){  //natural number
    if (amount <= currentvalueofbank){
      currentvalueofbank -= amount;
      Debug.print(debug_show(currentvalueofbank));  
    } else {
      Debug.print("Insufficient funds");
    };
  };
}