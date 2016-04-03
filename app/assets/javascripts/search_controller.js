

function ajaxSearch(){
  $.ajax({
    type: 'GET',
    url: $("#search-form").attr("action"),
    data: $("#search-form").serialize(),
    dataType: "script"
  })
}
