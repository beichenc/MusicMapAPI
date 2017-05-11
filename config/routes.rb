Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :mapped_songs

  get '/users/check?username=:username', to:'users#check'

  # match '*any' => 'application#options', :via => [:options]

end
