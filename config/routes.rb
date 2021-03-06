SampleApp::Application.routes.draw do

  resources :sessions, :only => [:new, :create, :destroy]
  resources :users

  match '/contact', :to=> 'pages#contact'
  match '/about',   :to=> 'pages#about'
  match '/help',    :to=> 'pages#help'
  match '/signup',  :to=> 'users#new'

  root :to=>'pages#home'

  match '/signin',  :to=> 'sessions#new'
  match '/signout', :to=> 'sessions#destroy'
end
