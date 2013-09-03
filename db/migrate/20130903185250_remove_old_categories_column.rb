class RemoveOldCategoriesColumn < ActiveRecord::Migration
  def change
    remove_column :articles, :old_categories
  end
end
