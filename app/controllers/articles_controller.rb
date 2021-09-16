class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id]) #instance variable, accessible by view
    # *** By DEFAULT, the show action will render app/views/articles/show.html.erb.
  end
end

# When an action does not explicitly render a view 
# (or otherwise trigger an HTTP response), 
# Rails will automatically render a view that matches 
# the name of the controller and action. 
# "Convention Over Configuration! "


# Views are located in the app/views directory.
#  So the index action will render app/views/articles/index.html.erb 
#  by default.