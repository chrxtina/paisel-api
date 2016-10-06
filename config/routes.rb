Rails.application.routes.draw do
  resources :votes, except: [:new, :edit, :update, :destroy]
  resources :thoughts, except: [:new, :edit]
  get '/mythoughts' => 'thoughts#mythoughts'
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
