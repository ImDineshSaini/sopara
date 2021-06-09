Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tv_series#index'
  get '/tv_series', to: 'tv_series#index'
end
