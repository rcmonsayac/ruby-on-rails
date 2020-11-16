Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles' => 'articles#create', as: 'create_article'
  get '/articles/show/:id' => 'articles#show', as: 'show_article'
  get '/articles/edit/:id' => 'articles#edit', as: 'edit_article'
  put '/articles/update' => 'articles#update', as: 'update_article'
  delete '/articles/delete/:id' => 'articles#delete', as: 'delete_article'


end
