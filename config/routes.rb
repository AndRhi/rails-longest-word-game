Rails.application.routes.draw do
  get 'new', to: 'games#new'
  post 'score', to: 'games#score'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

 # get 'about', to: 'pages#about', as: :about
 #  get 'contact', to: 'pages#contact', as: :contact
