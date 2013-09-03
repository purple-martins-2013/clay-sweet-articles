class TagsController < ApplicationController
  def show
    @tag = Tag.find_by_name(params[:name])
    @articles = @tag.articles.all
    p @articles
  end
end