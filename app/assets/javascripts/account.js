$(function(){
  $("#menu").on("click", function(){
    $(this).next().not(":animated").slideToggle();
  });
});