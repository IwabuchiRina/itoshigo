Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  "/"  => "top#index"
  get  "/mypage"  => "mypage#index"

  resources :pets
  resources :posts
  resources :tasks

  get "/calendar" => "calendar#index"
  #get "/tasks" => "task#index"
  #get "/tasks/new" => "task#new"
  #post "/tasks" => "task#create"
end
 