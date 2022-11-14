fetch("https:/newsapi.org/v2/top-headlines?country=fr&category=general&apiKey=da39ecad288a4d8782dd37d3771880fa")
 .then(response => response.json())
 .then((data) => {
    // console.log(name)
    console.log(author)
    console.log(title)
  })




// let product_sheet = fetch('http://localhost:3000/api/cameras')
//   .then(function(response){
//     return response.json()
//   }).then(function(data){
//      // appel de ta fonction d'affichage
//      afficheDatas(data);
// });
