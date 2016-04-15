Rails.application.routes.draw do
  resources :zombies do
    # resources :tweets
    get :bio, on: :member
    patch :custom_email, on: :member
    post :search, on: :collection
  end
  root 'zombies#index'



  namespace :ajax do
    get 'login' => 'session#login', as: 'login'
    post 'save_login/:registration_number/:password' => 'session#save_login',
         as: 'save_login'
    delete 'logout' => 'session#logout', as: 'logout'
    #get 'student/show/:id' => 'session#show'
    resources :students
    get 'google_maps' => 'students#show_map', as: 'google_maps'

  end
  # root 'ajax/session#login'
end
