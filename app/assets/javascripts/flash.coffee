$(document).on "turbolinks:load", ->
  if $(".alert").length
    setTimeout ->
      $(".alert").hide()
    , 3000