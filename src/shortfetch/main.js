const img = document.querySelector('img');
url = 'https://api.giphy.com/v1/gifs/translate?api_key=EwFJcRUpwEObRmp5f321sgeV5C9X0w85&s=cats'
fetch(url)
  .then(response => response.json())
  .then(response => img.src = response.data.images.original.url);