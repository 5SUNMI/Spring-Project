/**
 * 
 */
let smallImg = document.querySelectorAll("#small_img>img");
for (let i = 0; i < smallImg.length; i++) {
  smallImg[i].addEventListener("click", () => {
    document.querySelector("#big_img>img").src = smallImg[i].src;
    // console.log(smallImg[i].src);
  });
}

let showDetail = document.querySelector(".show");
showDetail.addEventListener("click", () => {
  document.querySelector(".hidden").style.display = "block";
  document.querySelector(".show").style.display = "none";
  document.querySelector("#info_detail").style.display = "block";
  //   console.log(document.querySelector(".hidden"));
});

let hiddenDetail = document.querySelector(".hidden");
hiddenDetail.addEventListener("click", () => {
  document.querySelector(".hidden").style.display = "none";
  document.querySelector(".show").style.display = "block";
  document.querySelector("#info_detail").style.display = "none";
  //   console.log(document.querySelector(".hidden"));
});
