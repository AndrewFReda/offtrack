class OffTrack.Views.AllBets extends Backbone.View

  template: JST['bets/all']

  _initialize: ->
    view = this
    this.collection.fetch({
      success: (collection, response) -> 
        view.render()
    })

  render: ->
    console.log(this.collection)
    bets = this.collection.models
    @$el.html(@template({bets:bets}))
    this
