Rails.application.routes.draw do
  resources :sports do
    resources :teams, shallow: true do
      resources :roster_entries, shallow: true
    end
  end
  resources :games
  resources :players do
    resources :rsvps, shallow: true
  end

end
