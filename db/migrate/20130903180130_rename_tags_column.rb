class RenameTagsColumn < ActiveRecord::Migration
  def change
    rename_column :articles, :tags, :oldtags
  end
end