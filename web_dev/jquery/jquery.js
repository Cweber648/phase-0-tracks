$(document).ready(function() {

  $("#picture").click(function(){
    alert("The Picture was clicked.");
  });

  $("#text").click(function(){
$("#text").hide(300).show(1000);
  })

  $("#cup").click(function(){
    $("#cup").toggle(1000).toggle(1000);
      })
});