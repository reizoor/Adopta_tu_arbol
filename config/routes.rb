Rails.application.routes.draw do
  resources :trees
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#landpage'
  get 'choice_view', to: 'pages#choice_view', as: 'choice_view'
  # Trees routes
  

  
end
