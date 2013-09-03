class CreateCategoriesAndTags < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    create_table :articles_categories do |t|
      t.references :article
      t.references :category

      t.timestamps
    end

    create_table :tags do |t|
      t.string :name

      t.timestamps
    end

    create_table :articles_tags do |t|
      t.references :article
      t.references :tag

      t.timestamps
    end
  end
end
