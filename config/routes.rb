Rails.application.routes.draw do
 root 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

get 'expenses/summary', to: 'expenses#summary'
post 'expenses/import', to: 'expenses#import'
  resources :users
  resources :expenses

  get 'say/Hello'

  get 'say/goodbye'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
