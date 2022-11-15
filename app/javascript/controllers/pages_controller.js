// fetch("https:/newsapi.org/v2/top-headlines?country=fr&category=general&apiKey=da39ecad288a4d8782dd37d3771880fa")
//  .then(response => response.json())
//  .then((data) => {
//     // console.log(name)
//     console.log(author)
//     console.log(title)
//   })

  function buttonClickGET() {
    let url = "https:/newsapi.org/v2/top-headlines?country=fr&category=general&apiKey=da39ecad288a4d8782dd37d3771880fa"

    $.get(url, callBackGetSuccess).done(function() {
        //alert( "second success" );
      })
      .fail(function() {
        alert( "error" );
      })
      .always(function() {
        //alert( "finished" );
      });
}

