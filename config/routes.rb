Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to:'homes#top'
  get "home/about" => "homes#about"
  get 'searches/search'
  devise_for :users

  resources :books, only: [:show,:index,:edit,:create,:destroy,:update] do
    resources :book_comments, only: [:create,:destroy]
    resource :favorites,only: [:create,:destroy]
  end
  resources:groups,only: [:index,:show,:new,:create,:edit,:update,:destroy] do
    get 'join' => 'groups#join'
  end
  resources :users, only: [:show,:index,:edit,:update] do
    resource :relationships, only: [:create,:destroy]
    get 'followings' => 'relationships#followings',as:'followings'
    get 'followers' => 'relationships#followers',as:'followers'
  end
  get 'search' => 'searches#search',as:'search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end