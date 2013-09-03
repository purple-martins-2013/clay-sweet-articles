class MoveCategoriesToNewTable < ActiveRecord::Migration
  def change
    Article.find_each do |article|
      categories = article.old_categories.split(',')
      categories.each do |category|
        article.categories.create(name: category.strip)
      end
    end
  end
end
