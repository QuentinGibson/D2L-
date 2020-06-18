Rails.application.routes.draw do
  resources :tags
  resources :tasks
  resources :parents
  resources :subjects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
