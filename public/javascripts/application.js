$(function() {
  $("#people th a").on("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#people_search input").keyup(function() {
    $.get($("#people_search").attr("action"), $("#people_search").serialize(), null, "script");
    return false;
  });
});