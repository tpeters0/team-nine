class Story < ActiveRecord::Base
  belongs_to :profile

  validates :category, :heading, :body, {presence: true}
end
