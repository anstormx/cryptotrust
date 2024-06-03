import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor debank{ //class declaration
  stable var currentvalueofbank: Float = 10000; //declaring a persisted  variable as a float number and not allowing it to be changed even when deployed again
  
  public func deposit(amount: Float){  
    currentvalueofbank += amount;
    Debug.print(debug_show(currentvalueofbank)); 
  };

  public func withdraw(amount: Float){  
    if (amount <= currentvalueofbank){
      currentvalueofbank -= amount;
      Debug.print(debug_show(currentvalueofbank));  
    } else {
      Debug.print("Insufficient funds");
    };
  };

  public query func checkbalance(): async Float {  
    return currentvalueofbank;
  };

}
