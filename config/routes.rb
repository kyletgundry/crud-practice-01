Rails.application.routes.draw do
  get "/" => "shirts#index"
  get "/shirts" => "shirts#index"
  get "/shirts/new" => "shirts#new"
  post "/shirts" => "shirts#create"
  get "/shirts/:id" => "shirts#show"
  get "/shirts/:id/edit" => "shirts#edit"
  patch "shirts/:id" => "shirts#update"
  delete "shirts/:id" => "shirts#destroy"

end
