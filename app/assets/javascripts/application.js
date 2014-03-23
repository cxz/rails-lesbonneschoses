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
//= require vendor/jquery-2.0.3.min
//= require jquery_ujs
//= require turbolinks
//= require vendor/modernizr-2.6.2.min
//= require vendor/catslider
//= require vendor/numeral-1.4.5.min
//= require vendor/moment-2.2.1.min
//= require vendor/underscore-1.5.2.min
//= require_tree .


$(document).on('ready page:load', function() {
    App.initialize();
});
