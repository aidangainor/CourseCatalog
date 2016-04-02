$(document).ready(function(){
  var form = document.getElementById("search_field");
  var options = document.getElementById("dropdown_select");
  form.oninput = doSomething;
  options.onchange = doSomething;

});


function doSomething(){
  $.ajax({
    type: 'GET',
    url: $("#search-form").attr("action"),
    data: $("#search-form").serialize(),
    dataType: "script"
  })
}
