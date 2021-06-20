Rails.application.routes.draw do
  resources :tweets do
    resources :tweets do
    end
    resources :likes
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tweets/retweet/:id', to: 'tweets#retweet', as: 'retweet'
  
  resources :users do
    resources :friends
  end

  get '/:hashtag', to: 'tweets#hashtag_search', as: 'hashtag'

  root to: 'tweets#index'

end
