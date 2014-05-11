class OffTrack.Routers.Users extends Backbone.Router
  routes: 
    '': 'index'

  # initialize: ->


  index: ->
    view = new OffTrack.Views.UsersSignUp()
    view.setElement($('#container'))
    view.render()
