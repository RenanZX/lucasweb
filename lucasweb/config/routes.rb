Rails.application.routes.draw do
  resources :admins
  resources :webseries
  resources :poemas
  resources :fotos
  resources :musicas
  resources :textos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    match ':controller(/:action(/:id))', :via => :get 
    root'home#main'
    get '/homepage' => 'home#homepage'
    get '/sobre' => 'home#about'
    get '/contato' => 'home#contato'
    get '/webserie' => 'home#webserie'
    get '/admin/musicas' => 'musicas#admin'
    get '/admin/fotos' => 'fotos#admin'
    get '/admin/poemas' => 'poemas#admin'
    get '/admin/textos' => 'textos#admin'
    get '/admin/webseries' => 'webseries#admin'
    get '/admin/login' => 'autenticacao#login'
    post '/admin/login(.:format)' => 'autenticacao#login'
    post '/admin/logout(.:format)' => 'autenticacao#logout'
    get 'admin/logout' => 'autenticacao#logout'
    get '/admin' => 'admins#index'
  end
end
