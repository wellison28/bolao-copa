Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/entrar', to: 'devise/sessions#new'
    get '/cadastrar', to: 'devise/registrations#new'
    get '/jogos', to: 'bet#index'
    get '/palpitar', to: 'bet#new'
    post '/palpitar', to: 'bet#create'
    root to: 'home#index'
  end
end
