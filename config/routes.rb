Rails.application.routes.draw do
  root 'dashboard#index'
  devise_for :users

  match '/books/:book_id/multi_upload(.:format)', to: 'pages#multi_upload', :as => 'multi_upload', :via => [:get, :post]
  get '/books/:book_id/pages/:id/translate(.:format)', to: 'pages#translate', :as => 'translate'

  resources :books do
    resources :pages
  end


end
