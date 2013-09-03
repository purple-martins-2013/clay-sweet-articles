class RenameCategoryColumn < ActiveRecord::Migration
  def change
    rename_column :articles, :category, :old_categories
  end
end
