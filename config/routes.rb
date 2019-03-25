# frozen_string_literal: true

# declarete routes for Get and POST
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :author, only: %i[index new create show] do
    get 'search', on: :collection
    resource :book, only: [:show]
  end

  resource :book, only: %i[index new create show] do
    get 'search', on: :collection
  end

  resource :bookcase, only: %i[index new create show]
end
