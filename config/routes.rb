Rails.application.routes.draw do
  root 'citizens#signin'
  get 'register', to: 'citizens#register'
  get 'signin', to: 'citizens#signin'
  post 'signin', to: 'citizens#authenticate'

  resources :citizens, only: [:create, :edit, :update] do
    resources :appointments, only: [:create, :new]
  end

  # optional
  # get 'clinics/:slug', to: 'clinics#show_by_slug'
  resources :clinics, except: [:destroy, :index]
end
