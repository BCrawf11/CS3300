Rails.application.routes.draw do
  devise_for :students
  devise_for :users
  root to: "projects#index"
  resources :projects
end