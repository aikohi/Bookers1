Rails.application.routes.draw do
  get "/blogs" => "blogs#index"
  get "/" => "blogs#top"
  resources :blogs
end
