class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  validates :username, { presence: true, uniqueness: true }
  validates :email, { presence: true, uniqueness: true }
end
