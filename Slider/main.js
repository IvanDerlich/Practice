
const slider = document.querySelector(".slider")

var number = 3;

const nextBtn = document.querySelector("#next-btn")
nextBtn.addEventListener("click",() =>{ 
  number = number == 4 ? 1 : number+1; 
  
  // slider.style.backgroundImage = `url('${number}.jpeg')`
})

const previousBtn = document.querySelector("#previous-btn")
previousBtn.addEventListener("click",() =>{
  
  const pic1 = document.querySelector("#pic1")
  pic1.classList.re
  pic1.classList.add(`move-left-${number}`)
  number--; 
  // slider.style.backgroundImage = `url('${number}.jpeg')`
})