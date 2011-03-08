Friendlycrowds::Application.routes.draw do
  resources :questions

  root :to => "pages#home"
  
  match '/questions',   :to => 'questions#index'
  
  # Match the callbacks for authentication
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
  
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
