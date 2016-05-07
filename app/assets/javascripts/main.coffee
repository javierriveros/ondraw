# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.snack = (options)->
    $("#global-snackbar").MaterialSnackbar.showSnackBar(options)

$(document).on "ready page:fecth page:load", ()->
    $(".best_in_place").best_in_place()