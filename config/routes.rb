Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  "/"  => "top#index"
  get  "/mypage"  => "mypage#index"

  resources :pets
  resources :posts
  resources :tasks
  post '/tasks/:id/complete' => 'tasks#complete'

  get "/calendar" => "calendar#index"
  get "/search" => "search#index"
end
 