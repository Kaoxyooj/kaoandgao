$(document).on "change", "#rsvp_ceremony", () ->
  $(this).closest("form").find("input[type=submit]").click()