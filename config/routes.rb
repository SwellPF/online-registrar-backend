Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :students do
        resources :enrollments
      end
      resources :courses do
        resources :enrollments 
      end
    end
  end
end
