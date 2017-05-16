Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :mapped_songs

  get '/users/check/:username' => 'users#check'
  post '/users/:username' => 'users#updatevisits'
  get '/mapped_songs/filter/:genre/:username/:timeinterval' => 'mapped_songs#filter'
  #get '/mapped_songs/filter/:username' => 'mapped_songs#filter'
  #get '/mapped_songs?username=:username&genre=:genre&timeinterval=:timeinterval' => 'mapped_songs#filter'
  # match '*any' => 'application#options', :via => [:options]


end
