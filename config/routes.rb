OffTrack::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  root 'users#new'

  scope 'bets' do
    get 'proposed' => 'bets#proposed'
    get 'received' => 'bets#received'
  end
  resources :bets 

end
