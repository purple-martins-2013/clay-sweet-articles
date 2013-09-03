class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def redirect
    article = Article.find_by_url "articles/#{params[:month]}/#{params[:day]}/#{params[:year]}/#{params[:title]}"

    category = article.categories.first

    redirect_to category_article_path(category.name, params[:title])
  end

  def show
    @article = Article.find_by_title(params[:title])
  end
end