Rails.application.routes.draw do
  devise_for :admins,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}
  devise_for :users, controllers: {
    sessions: "public/users/sessions",
    passwords: 'public/users/passwords',
    registrations: 'public/users/registrations',
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  scope module: :public do
    get "search" => "searches#search"
    root to: 'homes#top'
    resources :users, only: [:show, :edit, :update,]
    resources :posts, only: [:index, :show] 
  end

  namespace :admin do
    get "search" => "searches#search"
    resources :posts, only: [:index, :show, :destroy]
    resources :users, only: [:show, :edit, :update]
    resources :genres, only: [:index, :update, :create, :destroy, :edit]
    get 'homes/top'
  end
end
