Rails.application.routes.draw do
  devise_for :users
  resources :users do
    member do
     get :following, :followers
    end
  end
  resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show]
  resources :relationships, only: [:create, :destroy]
  get 'songs/:song_id/likes' => 'likes#create'
  get 'songs/:song_id/likes/:id' => 'likes#destroy' 
  resources :songs do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

  
  get 'rooms/show'
  resources :perfumes
  root 'songs#top'
end
