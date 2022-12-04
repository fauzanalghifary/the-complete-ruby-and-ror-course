Rails.application.routes.draw do
  resources :articles #, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  root 'pages#home'
  get 'about', to: 'pages#about'
end
