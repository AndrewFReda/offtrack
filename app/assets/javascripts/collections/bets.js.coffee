class OffTrack.Collections.Bets extends Backbone.Collection

  initialize: ->
    this.fetch()

  model: OffTrack.Models.Bet
  url: "bets"