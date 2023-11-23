Rails.application.routes.draw do
  devise_for :enquiries
  devise_for :posts
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
