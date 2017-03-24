Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :videos

  resources :forums do
    resources :comments
  end
  
  devise_for :users
  
  root 'pages#home'
  
  get 'nosotros' => 'pages#nosotros', as: :nosotros
  get 'sonemos' => 'pages#sonemos', as: :sonemos
  get 'herramientas' => 'pages#herramientas', as: :herramientas
  get 'hablemos' => 'pages#hablemos', as: :hablemos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
