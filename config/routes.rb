Rails.application.routes.draw do
  devise_for :users
  resources:books,only:[:create, :index, :show, :edit, :update, :destroy]
  resources:users,only:[:index, :show, :edit, :update]
  get "homes/top" => "homes#top"
  get "homes/about" => "homes#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
