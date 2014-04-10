//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap

$(function() {
  $(document).on("click","#people p span strong a, #people .pagination a", function() {
    $.getScript(this.href);
    return false;
  });
  $("#people_search input").keyup(function() {
    $.get($("#people_search").attr("action"), $("#people_search").serialize(), null, "script");
    return false;
  });
});