Rails.application.routes.draw do
  devise_for :admin_users
  root 'welcome#index'
  resources :curriculums
  resources :data
  resources :projects
  resources :students

  # namespace :admin do
  #   resources :students
  # end
  scope module: :admin do
    resources :students
  end
end
