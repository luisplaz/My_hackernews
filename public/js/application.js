$(document).ready(function() {

 $("#upvote").on("submit",function(event){
  event.preventDefault();
  $.ajax({
    url: $(this).attr('action'),
    type: $(this).attr("method"),
    dataType: "json"
  }).done(function(response){
    $("#vote_count").text(response);
  })
  });

   $("#downvote").on("submit",function(event){
  event.preventDefault();
  $.ajax({
    url: $(this).attr('action'),
    type: $(this).attr("method"),
    dataType: "json"
  }).done(function(response){
    $("#vote_count").text(response);
  })

});

});
