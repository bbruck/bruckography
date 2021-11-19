Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'series', to: 'pages#series', as: :series
  get 'work', to: 'pages#work', as: :work
  patch 'work', to: 'pages#work'
  get 'contact', to: 'pages#contact', as: :contact
  get 'upload', to: 'work#upload', as: :upload
  post 'work/upload', to: 'work#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
