# frozen_string_literal: true

# Rails.application.routes.draw do
#   root to: 'malina/emails#index'
#
#   namespace :malina do
#     resources :emails, only: %i[index show destroy]
#   end
# end

Malina::Engine.routes do
  root to: 'malina/emails#index'

  namespace :malina do
    resources :emails, only: %i[index show destroy]
  end
end
