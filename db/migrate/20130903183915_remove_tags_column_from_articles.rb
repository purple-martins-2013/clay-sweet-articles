class RemoveTagsColumnFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :oldtags
  end
end
