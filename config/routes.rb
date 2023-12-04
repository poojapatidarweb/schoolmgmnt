Rails.application.routes.draw do
  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
  }
  root 'welcome#index'
  namespace :admin do
    resources :students
    resources :projects
    resources :courses
    resources :blogs
    resources :curriculums
  end

  scope module: :admin do
    resources :students
  end
end
