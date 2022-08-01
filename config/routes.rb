Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/show'
  get 'index/new'
  get 'index/create'
  get 'index/show'
  devise_for :users
  root to:'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
