# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
		
	jQuery ->

		$(".menu-option").click (window.event), ->
			$(".menu-option").removeClass("active")
			$(@).addClass("active")

		$(".click-to-reveal").click (window.event), ->
			$('.click-to-reveal').removeClass('active')
			$('.reveal-panel').hide()
			$(@).addClass('active')
			targetId = "#" + $(@).data("reveal-panel-id")
			$('body').find(targetId).fadeIn()

$(document).on('turbolinks:load', ready)