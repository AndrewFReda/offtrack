class OffTrack.Views.MyBets extends Backbone.View

  template: JST['bets/index']

  render: ->
    @$el.html(@template())
    this.renderAllBets()
    this.renderNewBetForm()
    this

  renderAllBets: ->
    collection = new OffTrack.Collections.Bets()
    view = new OffTrack.Views.AllBets({
      collection: collection
    })
    view.setElement('#all-bets')
    view._initialize()

  renderNewBetForm: ->
    view = new OffTrack.Views.NewBet()
    view.setElement('#new-bet')
    view.render()
