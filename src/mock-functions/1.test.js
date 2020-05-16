it('',()=>{
  const myMockFn = jest.fn(cb => cb(null, true));
  myMockFn(
    (err, val) => console.log(val)
  )
  console.log(myMockFn.mock)
  // > true
});