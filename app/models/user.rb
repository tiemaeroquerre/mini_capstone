class User < ApplicationRecord

  has_many :orders

  has_many :carted_products
  # has_many :products, through: :carted_products
  #don't include this because needing this association that allows us to see all the products the user has every carted is a maybe, not a definite yes 

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
