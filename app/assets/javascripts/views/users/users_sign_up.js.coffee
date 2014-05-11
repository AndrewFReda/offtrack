class OffTrack.Views.UsersSignUp extends Backbone.View

  template: JST['users/sign_up']

  render: ->
    @$el.html(@template())
    this

  