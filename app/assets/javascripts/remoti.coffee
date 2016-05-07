$(document).on "click", ".file-activator", (ev)->
    selector = $(this).attr("for")
    $(selector).click()
$(document).on "change", ".remotipart", (ev)->
    $(this).parent().submit()