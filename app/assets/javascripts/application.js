// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.turbolinks
//= require_tree .

$(document).ready(function(e){
  // $("[name='profile[is_public]']").bootstrapSwitch();

  Turbolinks.enableProgressBar();

  $(".js-hundred-countdown").on("input", function() {
    $("span").text(100 - $(this).val().length);
    if($(this).val().length > 100){
      $(".no-color").addClass('hundred-color');
    } else if($(this).val().length < 100){
      $(".no-color").removeClass('hundred-color');
    }
  });

  // console.log("before");
  // console.log($("[name='user[tos_accepted]']").is('checked'));
  // console.log("after");

  // function validateTerms(){
  //   if($("[name='user[tos_accepted]']").val() == "true"){
  //     console.log("submit")
  //   } else {
  //     alert("Please accept Spotdly's terms of service.");
  //     e.preventDefault();
  //     return false
  //     window.location.reload();
  //   }
  //   // if($("#user_tos_accepted").attr('checked')){
  //   // } else {
  //   //   alert("Please accept Spotdly's terms of service.");
  //   //   e.preventDefault
  //   // }
  // }

  // $("#new_user_submit").on("click", function(e){
  //   e.preventDefault();
  //   validateTerms(e);
  //   $("[name='user[tos_accepted]']").val()
  // })
})
