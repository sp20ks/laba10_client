# frozen_string_literal: true

Rails.application.routes.draw do
  root 'elements#index', as: 'home'
  get 'elements/result'
  get 'elements/index'

  post 'elements/result', to: 'elements#result'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
