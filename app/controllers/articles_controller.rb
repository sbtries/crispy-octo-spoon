class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id]) #instance variable, accessible by view
    # *** By DEFAULT, the show action will render app/views/articles/show.html.erb.
  end

  def new # instantiates a new article, but does not save it.
    @article = Article.new
    # *** by DEFAULT new action will render app/views/articles/new.html.erb
  end

  def create # instantiates a new article with values for the title and body, and attempts to save it
    # @article = Article.new(title: "...", body: "...")
    @article = Article.new(article_params) # using article_params to filter & require strong params

    if @article.save
      # if successful, redicts to article's page ("http://localhost:3000/articles/#{@article.id}")
      redirect_to @article
    else
      #redisplays the form by rendering app/views/articles/new.html.erb
      render :new
    end
end

  private
  def article_params
    params.require(:article).permit(:title, :body)
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