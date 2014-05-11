window.OffTrack = 
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new OffTrack.Routers.Users()
    Backbone.history.start()

$(document).ready ->
  OffTrack.initialize()
