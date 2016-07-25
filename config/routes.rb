Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/api' => 'application#index', defaults: { format: :json }
  root to: 'site#index' #add the route for the React component
end
