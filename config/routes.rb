Rails.application.routes.draw do
  root 'quotes#index'  # Set the homepage to show all quotes
  resources :quotes do
    member do
      patch 'upvote'
      patch 'downvote'
    end
  end
end
