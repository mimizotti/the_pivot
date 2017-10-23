# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
class CategoriesController
  index: ->
    $('#cycle_forwards').on 'click', (event) ->
      event.preventDefault()
      $('.toggle').addClass('.disabled')

this.categories = new CategoriesController

    # categories.forEach (category) ->
    #   category.data(count, (count -1))
    #   if category.data(count) === 0 ->
    #      category.removeClass('.disabled')
