Rails.application.routes.draw do
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#landing'
  get 'booger' => 'static_pages#booger'


end
