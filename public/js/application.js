$(document).ready(function() {
	$('#submit_answer').submit(function(e) {
	  e.preventDefault();
	  $.ajax({
	  	url: '/answers', //this refers to the route post '/'
	  	method: 'POST',
	  	data: $(this).serialize(),
	  	dataType: 'json'
	  } 
	  }); // end of function .ajax
	}); // end of function .submit

	$('#submit_answer').click(function() {
		window.location.reload();
	}); // end of function .click

	$('#submit_answer').submit(function(e) {
	  e.preventDefault();
	  $.ajax({
	  	url: '/answers', //this refers to the route post '/'
	  	method: 'POST',
	  	data: $(this).serialize(),
	  	dataType: 'json'
	  } 

	$('#submit_answer').submit(function(e) {
	  e.preventDefault();
	  $.ajax({
	  	url: '/answers', //this refers to the route post '/'
	  	method: 'POST',
	  	data: $(this).serialize(),
	  	dataType: 'json'
	  } 




}); // end of function document.ready

$(document).ready(function() {

});