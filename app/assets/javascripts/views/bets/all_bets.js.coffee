class OffTrack.Views.AllBets extends Backbone.View

  template: JST['bets/all']

  initialize: ->
    this.collection.on('sync', 'render')

  render: ->
    console.log(this.collection)
    # debugger
    bets = this.collection.models
    @$el.html(@template({bets:bets}))
    this
