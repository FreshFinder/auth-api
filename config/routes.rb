AuthApi::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sessions, :defaults => {:format => 'json'}, :only => [:create]
    end
  end
  resources :identities
  post "/auth/:provider/callback", to: "api/v1/sessions#create"
end
