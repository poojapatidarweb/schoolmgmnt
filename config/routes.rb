Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }
  root 'welcome#index'
  resources :students
  resources :projects
  resources :courses
  resources :blogs
  resources :curriculums
end
