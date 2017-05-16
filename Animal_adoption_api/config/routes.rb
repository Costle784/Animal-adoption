Rails.application.routes.draw do

  resources :animals, only: [:index]

  resources :locations do
    resources :animals, :except => [:index]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
