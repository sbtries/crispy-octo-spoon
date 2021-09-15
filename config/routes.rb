# ROUTES

# GET /articles requests are mapped to the index action of ArticlesController
Rails.application.routes.draw do
  root "articles#index"

  get "/articles", to: "articles#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
