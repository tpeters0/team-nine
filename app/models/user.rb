class User < ActiveRecord::Base
  has_many :stories, through: :profile
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile, allow_destroy: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
