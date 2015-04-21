class Story < ActiveRecord::Base
  belongs_to :user

  validates :category, :heading, :body, {presence: true}
end
