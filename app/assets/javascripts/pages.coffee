# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
		
	jQuery ->

		$(".menu-option").click (e) ->
			$(".menu-option").removeClass("active")
			$(@).addClass("active")

		$(".click-to-reveal").click (e) ->
			$('.click-to-reveal').removeClass('active')
			$('.reveal-panel').hide()
			targetId = "#" + $(@).data("reveal-panel-id")
			$('body').find(targetId).fadeIn()
			$('.click-to-reveal').each (index, element) =>
				if $(element).data("reveal-panel-id") == $(@).data("reveal-panel-id")
					$(element).addClass('active')

		$(".show-modal").click (e) ->
			targetId = "#" + $(@).data("reveal-panel-id")
			$('body').find(targetId).fadeIn()

		$(".dismiss-modal").click (e) ->
			$('.modal-container').hide()

$(document).on('turbolinks:load', ready)