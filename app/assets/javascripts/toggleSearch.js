$(function() {
  $(".panel-body").hide();
  $(".panel-heading").click(function() {
    $(this).next().slideToggle().siblings(".panel-body").slideUp();
  });
});
