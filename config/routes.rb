Rails.application.routes.draw do
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/edit'

  namespace :api, { format: 'json' } do
    namespace :v1 do
      resources :events
    end
  end
end
