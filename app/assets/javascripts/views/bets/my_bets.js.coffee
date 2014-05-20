class OffTrack.Views.MyBets extends Backbone.View

  template: JST['bets/index']

  render: ->
    @$el.html(@template())
    this.renderNewBetForm()
    this

  renderNewBetForm: ->
    view = new OffTrack.Views.NewBet()
    view.setElement('#new-bet')
    view.render()