Rails.application.routes.draw do
  resources :users
  resources :expenses
  get 'say/Hello'

  get 'say/goodbye'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
