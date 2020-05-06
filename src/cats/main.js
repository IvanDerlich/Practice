const img = document.querySelector('#img');
const btn = document.querySelector('#button');
const btn2 = document.querySelector('#button2');
const input = document.querySelector('#imp');

function imgChange(searchWord = 'cats'){
  url = 'https://api.giphy.com/v1/gifs/translate?api_key=EwFJcRUpwEObRmp5f321sgeV5C9X0w85&s='
   + searchWord
   console.log(url)
  fetch(url, {mode: 'cors'})
  .then(function(response) {
    return response.json()
  })
  .then(function(response) {
    img.src = response.data.images.original.url
  })
  .catch((error)=>{
    console.log(error)
  });
}

imgChange()

btn.addEventListener("click", () => {  
  imgChange("dogs")
})

btn2.addEventListener("click", () => {    
  imgChange(input.value)
})