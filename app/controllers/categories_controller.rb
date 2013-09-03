class CategoriesController < ApplicationController
  def show
    @category = Category.find_by_name(params[:name])
    @articles = @category.articles.all
    p @articles
  end
end