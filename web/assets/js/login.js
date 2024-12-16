const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const row = document.querySelector(".row");

sign_up_btn.addEventListener("click", () => {
  row.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  row.classList.remove("sign-up-mode");
});
