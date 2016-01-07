Rails.application.routes.draw do
  root 'dashboard#index'
  devise_for :users

  resources :books do
    resources :pages
  end

  get '/books/:book_id/pages/:id/translate(.:format)', to: 'pages#translate', :as => 'translate'
  post '/books/:book_id/pages/:id/save_translate(.:format)', to: 'pages#save_translate', :as => 'save_translate'

end
