Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :new, :create ] # take out new action, ir qiwll be within show page of restaurant, create action will still need to be action in review controller
  end
end
