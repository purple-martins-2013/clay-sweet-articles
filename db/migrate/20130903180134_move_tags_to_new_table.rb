class MoveTagsToNewTable < ActiveRecord::Migration
  def change
    Article.find_each do |article|
      tags = article.oldtags.split(',')
      tags.each do |tag|
        article.tags.create(name: tag.strip)
      end
    end
  end
end
