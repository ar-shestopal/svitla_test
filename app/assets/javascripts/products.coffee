$ ->
  $(".box").click ->
    id = $(@).data("product")
    $.getScript( "/products/" + id + ".js" )
      .done ( script, textStatus ) ->
        console.log( textStatus )
        $('#productModal').modal('show')

      .fail( ( jqxhr, settings, exception ) ->
        console.error("Error while loading procuct " + id))
