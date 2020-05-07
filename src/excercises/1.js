//https://javascript.info/task/rewrite-async

function loadJson(url) {
  return fetch(url)
    .then(response => {
      if (response.status == 200) {
        return response.json();
      } else {
        throw new Error(response.status);
      }
    })
}

async function loadJson2(url){  
  try{
    const response = await fetch(url) 
    if (response.status == 200) {
      let json = await response.json(); // (3)
      return json;
    }
    throw new Error(response.status);  
  } catch (error) {
    console.log(error)
  }  
};


loadJson('http://no-such-user.json')  