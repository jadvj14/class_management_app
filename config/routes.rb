Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user#root'
  get 'sign_up', :to => 'user#sign_up'
  get 'authenticate', :to => 'user#authenticate'
  post 'save', :to => 'user#save'
  post 'authenticate', :to => 'user#authenticate'
  get 'course/list'
  resources :courses
  get 'logout', :to => 'user#logout'
end
