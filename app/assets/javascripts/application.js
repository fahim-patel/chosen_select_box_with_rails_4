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
//= require_tree .

/////////////////////// skills_users //////////////////////////

$(document).ready(function() {
  // Below line will activate chosen
  $(".chosen-select_skills_users").chosen({no_results_text: "Oops, nothing found!", width: '40%'}); 

  // Below code ajax call will update skill
  $('.chosen-select_skills_users').on('change', function(evt, params) {
  $.ajax({
      type: 'PUT',
      url: gon.user_id + '/update_skills_users',
      data:{
        'skill': params
      },
      error: function(){},
      success: function(){},
      complete: function (){}
    });
  });

  // Below event will load selected chosen on edit page
  $(".chosen-select_skills_users").val(gon.skills_users_ids);
  $(".chosen-select_skills_users").trigger("chosen:updated");

});

/////////////////////// skills_users ///////////////////////////