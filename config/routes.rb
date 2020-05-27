Rails.application.routes.draw do

  devise_for :users
  root "messages#index"

  get 'index', to: 'messages#index'
  get 'schedule', to: 'messages#schedule'
  get 'contact', to: 'messages#contact'
  get 'slogan', to: 'messages#slogan'
  get 'sites', to: 'messages#sites'
  get 'lists', to: 'messages#lists'

  resources :messages, only: :index

end
