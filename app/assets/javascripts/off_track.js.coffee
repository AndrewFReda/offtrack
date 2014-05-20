window.OffTrack = 
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new OffTrack.Routers.Users()
    Backbone.history.start()

  swapInMyBets: ->
    view = new OffTrack.Views.MyBets()
    view.setElement($('#container'))
    view.render()
    

$(document).ready ->
  OffTrack.initialize()
