# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#cycle_forwards').on 'click', (event) ->
    event.preventDefault()
    categories = $('.thumb')
    categories.addClass('.disabled')
    # categories.forEach(function(category) {
    #   category.data(count, (count -1))
    #   if (category.data(count) === 0) {
    #      category.removeClass('.disabled')
    #   };
    # });
