# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
# can convert js to cs (consult google)/ or put into application.js

jQuery -> 
	$('#pins').imagesLoaded ->
		$('#pins').masonry itemSelector: ".box"

