import {
  decentralbank
} from "../../declarations/decentralbank";

window.addEventListener('load', async function () { //will get executed after the page is loaded
  const balance = await decentralbank.checkbalance();
  document.getElementById("value").innerText = Math.round(balance * 100) / 100;

});

document.querySelector("form").addEventListener("submit", async function (event) {
  event.preventDefault(); //prevent the default action of the form to clear the form

  const button = event.target.querySelector("#submit-btn");

  button.setAttribute("disabled", true); //disable the button after the form is submitted


  const deposit = parseFloat(document.getElementById("deposit-amount").value);
  const withdraw = parseFloat(document.getElementById("withdrawal-amount").value);

  if (deposit.length != 0 && deposit > 0) {
    await decentralbank.deposit(deposit);
    document.getElementById("deposit-amount").value = "";
  } else {

  };

  if (withdraw.length != 0 && withdraw > 0) {
    await decentralbank.withdraw(withdraw);
    document.getElementById("withdrawal-amount").value = "";
  } else {

  };

  const balance = await decentralbank.checkbalance();
  document.getElementById("value").innerText = Math.round(balance * 100) / 100;

  button.removeAttribute("disabled"); //enable the button after the form is submitted


});
