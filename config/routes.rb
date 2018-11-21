Rails.application.routes.draw do
  get '/apod', to: "apod#index"

  get '/apilist', to: "api_list#index"
  get '/eonet', to: "eonet#index"
   root 'home#index'

  # get '/apod', to: "nasas#apod"

  #match ':controller(/:action(/:id))', :via => :get

  #root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
