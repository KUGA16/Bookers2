Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  get 'top' => 'home#top'
  get 'about' => 'home#about', as:'home_about'
  resources :users, only: [:create, :index, :show, :edit, :update]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
end
