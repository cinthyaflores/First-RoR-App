Rails.application.routes.draw do
  resources :articles #Rails asume que hay un controlador para articles 
  #CUANDO SE CREA EL CONTROLADOR CON LOS METODOS TAMBIEN SE CREAN LAS RUTAS A ESOS METODOS
  get 'articles/index'
  post 'articles/create' 
  get 'articles/edit'
  put 'articles/update'
  get 'articles/show'
  delete 'articles/delete'
  get 'articles/new'

  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
