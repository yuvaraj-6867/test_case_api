Rails.application.routes.draw do
  root 'application#index'
  
  namespace :api do
    namespace :v1 do
      resources :projects, only: [:index, :create, :show] do
        resources :test_cases, only: [:index, :create, :show]
        post 'test_cases', to: 'projects#create_test_case'
      end
      resources :test_cases, only: [:index, :create, :show]
    end
  end
end