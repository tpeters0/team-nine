class Category < ActiveRecord::Base
  has_many :stories
  accepts_nested_attributes_for :stories, allow_destroy: true
end
