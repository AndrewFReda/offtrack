class OffTrack.Views.UsersSignUp extends Backbone.View

  template: JST['users/sign_up']

  events: ->
    'click #swap-in-my-bets': 'goToMyBets'

  render: ->
    @$el.html(@template())
    this

  goToMyBets: ->
    window.OffTrack.swapInMyBets()