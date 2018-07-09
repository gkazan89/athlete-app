Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/athletes" => "athletes#index"
  post "/athletes" => "athletes#create"
  get "/athletes/:id" => "athletes#show"
  patch "/athletes/:id" => "athletes#update"
  delete "/athletes/:id" => "athletes#destroy"
end
