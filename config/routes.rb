Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :notes, only: [:new, :create, :index, :show ,:edit, :update,:destroy]
  resources :categories, only: %i(index create edit update)
  get 'category/:id' => 'categories#search', as: 'categorys_search'

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
end
