Rails.application.routes.draw do
  resources :sports do
    resources :teams, except: [:destroy], shallow: true
  end
  resources :roster_entries, only: [:create, :new, :destroy]
  resources :games, except: [:destroy, :index]
  resources :players, except: [:destroy] do
    resources :rsvps, only: [:create, :new, :destroy],shallow: true
  end
  resources :sessions, only: [:create, :new, :destroy]

  root to: 'sports#index'

end
