Rails.application.routes.draw do

  resources :course_results
  resources :users
  resource :source_providers
  get '/source_providers/all', to: 'source_providers#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
