Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end

  resources :reviews, only: :destroy
  # * reviews precisa estar dentro de restaurants para new/create

  root 'restaurants#index'
end
