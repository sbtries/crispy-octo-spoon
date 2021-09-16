# ROUTES

# GET /articles requests are mapped to the index action of ArticlesController
Rails.application.routes.draw do
  root "articles#index"

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
# the above routes can be replaced with a routes method "resources". Docs: https://api.rubyonrails.org/v6.1.4/classes/ActionDispatch/Routing/Mapper/Resources.html#method-i-resources
# can inspect what routes are mapped by running bin/routes  
# also allows: - use of helper methods that keeps routes on a more fluid config (ex:<a href="<%= article_path(article) %>">)
#              - use of link_to which calls path helper to convert object to a path (ex:<%= link_to article.title, article %>)

  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
