Rails.application.routes.draw do
  # get 'signup/index'
  root "signup#index"
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
