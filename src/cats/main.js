const img = document.querySelector('#img');
const btn = document.querySelector('#button');
const btn2 = document.querySelector('#button2');
const input = document.querySelector('#imp');

async function imgChange(searchWord = 'cats'){
  url = 'https://api.giphy.com/v1/gifs/translate?api_key=EwFJcRUpwEObRmp5f321sgeV5C9X0w85&s='
   + searchWord   
   try {
      const response = await fetch(url, {mode: 'cors'})
      const catData = await response.json();
      img.src = catData.data.images.original.url;
   } catch(err) {
    console.log(error)
   }  
}

btn.addEventListener("click", () => {  
  imgChange("dogs")
})

btn2.addEventListener("click", () => {    
  imgChange(input.value)
})

imgChange()

//wait 10 seconds