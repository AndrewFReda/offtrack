class OffTrack.Views.NewBet extends Backbone.View

  template: JST['bets/new']

  render: ->
    @$el.html(@template())
    this
