//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require shared/bootstrap.min
//= require shared/bootstrap-datepicker
//= require shared/jquery.backstretch
//= require shared/classie
//= require shared/selectFx
//= require shared/jquery.dataTables
//= require turbolinks

$(document).on('turbolinks:load', function() {
  // reattach callback
  $(".notification").fadeTo(3000, 500).slideUp(500, function() {
    $(".notification").slideUp(500);
  });

  // smooth scroll
  $("a[href^='#']").on('click', function(e) {
    e.preventDefault();

    var hash = this.hash;

    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 500, function() {
      window.location.hash = hash;
    });
  });
});
