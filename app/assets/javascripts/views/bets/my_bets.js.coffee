class OffTrack.Views.MyBets extends Backbone.View

  template: JST['bets/index']

  render: ->
    @$el.html(@template())
    this