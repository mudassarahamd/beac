Rails.application.routes.draw do
  # devise_for :experts
  # devise_for :sales

  devise_for :companies, path: 'companies'
  devise_for :users, path: 'users'
  devise_for :experts, path: 'experts'

  root to: 'pages#home'

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "home#index"
end
