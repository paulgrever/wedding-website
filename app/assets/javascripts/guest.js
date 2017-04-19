// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$( document ).ready(function() {
  $('#attending_wedding').click(function(e) {
    $('.radio-attend').prop("checked", true);
    $('#not_attending_wedding span.glyphicon-ok').addClass('hidden');
    $('#not_attending_wedding span.glyphicon-unchecked').removeClass('hidden');
    $('#attending_wedding span.glyphicon-ok').removeClass('hidden');
    $('#attending_wedding span.glyphicon-unchecked').addClass('hidden');
    $('#not_attending_wedding').removeClass('bg-danger').removeClass('selection');
    $('#attending_wedding').addClass('bg-success').addClass('selection');
  });
  $('#not_attending_wedding').click(function(e) {
    $('.radio-not-attend').prop("checked", true);
    $('#attending_wedding span.glyphicon-ok').addClass('hidden');
    $('#attending_wedding span.glyphicon-unchecked').removeClass('hidden');
    $('#not_attending_wedding span.glyphicon-ok').removeClass('hidden');
    $('#not_attending_wedding span.glyphicon-unchecked').addClass('hidden');
    $('#attending_wedding').removeClass('bg-success').removeClass('selection');
    $('#not_attending_wedding').addClass('bg-danger').addClass('selection');
  });
});


