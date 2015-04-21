class Profile < ActiveRecord::Base
  has_many :stories
  belongs_to :user

  validates :name, {presence: true}
end
