
const slider = document.querySelector(".slider")

var number = 1;

const nextBtn = document.querySelector("#next-btn")
nextBtn.addEventListener("click",() =>{ 
  number = number == 4 ? 1 : number+1;   
  slider.style.backgroundImage = `url('${number}.jpeg')`
})

const previousBtn = document.querySelector("#previous-btn")
previousBtn.addEventListener("click",() =>{
  number = number == 1 ? 4 : number-1; 
  slider.style.backgroundImage = `url('${number}.jpeg')`
})