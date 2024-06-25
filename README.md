# CyptoTrust

CyptoTrust is a simple banking application that allows users to deposit and withdraw funds. It is built using Motoko and JavaScript.

## Motoko Backend

The backend is written in Motoko and provides the following functionalities:

- `deposit(amount: Float)`: This function allows a user to deposit a specified amount into their account. The current balance of the bank is updated and printed.

- `withdraw(amount: Float)`: This function allows a user to withdraw a specified amount from their account. If the withdrawal amount is less than or equal to the current balance, the balance is updated and printed. If the withdrawal amount is greater than the current balance, an "Insufficient funds" message is printed.

- `checkbalance(): async Float`: This function allows a user to check their current balance.

## HTML Frontend

The frontend is a simple HTML page that displays the current balance and provides forms for depositing and withdrawing funds.

## JavaScript

The JavaScript code interacts with the Motoko backend. It updates the displayed balance when the page loads and when a transaction is made. It also handles form submissions for depositing and withdrawing funds.

## Setup

1. Install all the node dependencies 
    ```
   npm i
    ```
3. Install dfx 
    ```
   dfxvm install 0.9.3
    ```
4. Initialize the replica of the canister environment
   ```
   dfx start
   ```
5. Deploy the backend canister
   ```
   dfx deploy
   ```
6. Start the app
   ```
   npm start
   ```
