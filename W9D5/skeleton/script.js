document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const handleSubmit = (e) => {
    e.preventDefault();

    const favInput = document.querySelector(".favorite-input");
    const fav = favInput.value;
    favInput = "";

    const newListLi = document.createElement("li");
    newListLi.textContent = fav;

    const favsList = document.getElementById("sf-places");
    favsList.appendChild(newListLi);
    

  };

  const listSubmitButton = document.querySelector(".favorite-submit");
  listSubmitButton.addEventListener("click", handleSubmit);

  // --- your code here!



  // adding new photos

  // --- your code here!



});
