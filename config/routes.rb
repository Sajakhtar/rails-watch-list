Rails.application.routes.draw do
  get 'bookmarks/new'
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'lists#index'

  resources :lists, only: [:show, :new, :create] do
  # resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:create]
  end

  resources :bookmarks, only: [:destroy]
end
