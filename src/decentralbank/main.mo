import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor debank{ //class declaration
  stable var currentvalueofbank: Float = 1000; 
  currentvalueofbank := 1000;
  //declaring a persisted  variable as a float number and not allowing it to be changed even when deployed again

  stable var starttime = Time.now(); //declaring a constant variable that stores the current time in nanoseconds
  starttime := Time.now(); 
  public func deposit(amount: Float){  
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

  public func compoundint(){
    let currenttime = Time.now();
    let elapsedtime = currenttime - starttime; //in nanoseconds
    let elapsedtimeinsec = elapsedtime / 1000000000; //converting nanoseconds to seconds
    currentvalueofbank := currentvalueofbank*(1.01**Float.fromInt(elapsedtimeinsec)); //compounding interest formula
    Debug.print(debug_show(currentvalueofbank));
    starttime := currenttime;
  };
}