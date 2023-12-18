Rails.application.routes.draw do
  resources :grades
  resources :schools
  resources :students
  resources :parents
  resources :teachers
  resources :deputy_headteachers
  resources :headteachers
  resources :owners
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
