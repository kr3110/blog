class ArticlesController < ApplicationController
include ArticlesHelper
def index
  @articles=Article.all
end
def new
  @article = Article.new
end
def destroy
  @article= Article.find(params[:id])
  @article.destroy
  flash[:notice]= "Your article was remove"
  redirect_to action: "index"
end
def create
  @article =Article.new(article_params)
  @article.save
 flash[:notice] = "Creation was successfull"
  redirect_to article_path(@article)
end
def show
  @article= Article.find(params[:id]) 
end
def edit
  @article= Article.find(params[:id])
end
def update
  @article= Article.find(params[:id])
  @article.update(article_params)
  flash[:notice] = "Update was succesdfull"
  redirect_to article_path(@article)
end
end
