class Profile < ActiveRecord::Base
  has_many :stories, dependent: :destroy
  belongs_to :user

  validates :name, {presence: true}
end
