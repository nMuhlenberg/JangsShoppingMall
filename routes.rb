Rails.application.routes.draw do 
  resources :members, only: [:new, :create, :index, :edit, :update, :destroy] # setting all aspects for the routes
  root "members#new" # making a new folder of members
end
