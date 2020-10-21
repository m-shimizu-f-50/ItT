Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :notes, only: [:new, :create, :index, :show ,:edit, :update,:destroy]
  resources :categories, only: %i(index create edit update)
end
