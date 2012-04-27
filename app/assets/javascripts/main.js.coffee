# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('body').noisy()

	show_number = (item) ->
		setTimeout(
			->
				item.fadeIn(500, ->
					item.delay(800).fadeOut 500, ->
						show_number item.next()
				)
			, Math.floor((Math.random()*1100)+700);
		)



	$('.loading').typewrite
		delay: 100
		extra_char: ''
		callback: ->
			$('.loading').delay(500).fadeOut 500, ->
				show_number $(".number").first()
