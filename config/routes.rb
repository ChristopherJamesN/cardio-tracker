Rails.application.routes.draw do
  devise_for :users
  get '/workouts/today', to: 'workouts#today'
  get '/workouts/week', to: 'workouts#week'
  resources :workouts
  root to: "workouts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
