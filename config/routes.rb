Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
  
      resources :enrollments
      resources :students
      resources :categories
      resources :courses
    end
  end
end
