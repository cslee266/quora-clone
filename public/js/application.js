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
}); // end of function document.ready

$(document).ready(function() {
	$('#submit_answer').click(function() {
		window.location.reload(true);
	}); // end of function .click
});