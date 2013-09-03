class Article < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :categories
end