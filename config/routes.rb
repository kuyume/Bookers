Rails.application.routes.draw do
  resources :bookers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bookers#top'
  delete 'bookers/:id' => 'bookers#destroy', as: 'destroy_booker'
end
