const section = document.querySelector('#cats');
let requestURL = 'https://raw.githubusercontent.com/mdn/learning-area/master/javascript/oojs/tasks/json/sample.json';
let request = new XMLHttpRequest();
request.open('GET', requestURL);
request.responseType = 'json';
request.send();
request.onload = function() {
  const cats = request.response;
  console.log(cats)
  console.log(cats.length)
  cats.forEach(element => {
    console.log("kittens")    
    const myH2 = document.createElement('h2');
    myH2.textContent = element.name + ": " + element.kittens.length + " kittens";
    section.appendChild(myH2);       
  });
}