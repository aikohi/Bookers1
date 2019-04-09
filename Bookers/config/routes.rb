Rails.application.routes.draw do
  resources :blogs
  get "/" => "blogs#top"
end
