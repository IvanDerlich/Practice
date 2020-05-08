//https://codeburst.io/javascript-es-2017-learn-async-await-by-example-48acc58bad65

function doubleAfter2Seconds(x) {
  return new Promise(resolve => {
    setTimeout(() => {
      resolve(x * 2);
    }, 500);
  });
}

// doubleAfter2Seconds(10).then((r) => {
//   console.log(r);
// });

// let sum =   doubleAfter2Seconds(10)
//           + doubleAfter2Seconds(20)
//           + doubleAfter2Seconds(30);
// console.log(sum);



// async function addPromise(x){
//   const a = await doubleAfter2Seconds(10);
//   const b = await doubleAfter2Seconds(20);
//   const c = await doubleAfter2Seconds(30);
//   return x + a + b + c;
// }

async function addPromise(x){
  const aPromise = doubleAfter2Seconds(10);
  const bPromise = doubleAfter2Seconds(20);
  const cPromise = doubleAfter2Seconds(30);

  const [a, b, c] = await Promise.all([aPromise, bPromise, cPromise])
  return x + a + b + c;
}


addPromise(10).then(result =>{
  console.log(result)
})