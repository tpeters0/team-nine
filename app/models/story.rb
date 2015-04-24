class Story < ActiveRecord::Base
  belongs_to :profile
  belongs_to :user
  belongs_to :category

  validates :heading, :body, {presence: true}
end
