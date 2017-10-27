Rails.application.routes.draw do
 root 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

get 'expenses/all_record', to: 'expenses#all_record'

  resources :users
  resources :expenses
  get 'say/Hello'

  get 'say/goodbye'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
