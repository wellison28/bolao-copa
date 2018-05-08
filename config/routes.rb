Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/entrar', to: 'devise/sessions#new'
    get '/cadastrar', to: 'devise/registrations#new'

    root to: 'home#index'
  end

  resources :round

end
