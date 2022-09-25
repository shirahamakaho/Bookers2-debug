Rails.application.routes.draw do
  get 'create/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to:'homes#top'
  get "home/about" => "homes#about"
  devise_for :users

  resources :books, only: [:show,:index,:edit,:create,:destroy,:update] do
    resources :book_comments, only: [:create,:destroy]
    resource :favorites,only: [:create,:destroy]
  end
  resources :users, only: [:show,:index,:edit,:update] do
    resource :relationships, only: [:create,:destroy]
    get 'followed' => 'relationships#followed',as: 'followed'
    get 'followers' => 'relationships#followers',as: 'followers'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end