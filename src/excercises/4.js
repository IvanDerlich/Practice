var docs = [{}, {}, {}];

return Promise.all(docs.map(function (doc) {
  return db.post(doc);
})).then(function (results) {
  console.log(results);
});