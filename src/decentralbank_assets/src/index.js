import {
  decentralbank
} from "../../declarations/decentralbank";

window.addEventListener('load', async function() {  //will get executed after the page is loaded
  const balance = await decentralbank.checkbalance();
  document.getElementById("value").innerText = Math.round(balance);
});