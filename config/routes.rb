Rails.application.routes.draw do
  root to: 'site#index'

  get 'events', to: 'site#index'
  get 'events/new', to: 'site#index'
  get 'events/:id', to: 'site#index'
  get 'events/:id/edit', to: 'site#index'

#/api/events/...にアクセス可能　apiはcontrollerにある
    namespace :api do 
      resources :events, only: %i[index show create destroy update]
    end
end
