window.OffTrack = 
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new OffTrack.Routers.Users()
    Backbone.history.start()

  swapInMyBets: ->
    collection = new OffTrack.Collections.Bets()
    view = new OffTrack.Views.MyBets({
      collection: collection
    })
    view.setElement($('#container'))
    view.collection.fetch()
    view.render()
    

$(document).ready ->
  OffTrack.initialize()
