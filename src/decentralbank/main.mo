import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor debank{ //class declaration
  var currentvalueofbank = 1000; //declaring a variable
  currentvalueofbank := 500; //reassigning the value of the variable

  public  func deposit(amount: Nat){  //natural number
    currentvalueofbank += amount;
  };
  
  Debug.print(debug_show(currentvalueofbank));  
}