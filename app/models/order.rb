class Order < ApplicationRecord

  belongs_to :user

  has_many :carted_products
  has_many :products, through: carted_products

  #associations for instance of a model to another model .. traverse through the carted_products table to find information about products 
 
  

  #association method we can use on our order class

  def calculated_subtotal #product.price find this orders product hash by calling the association method and looks for the price attribute 
    product.price * quantity #quantity is an attribute reader 
  end

  def calculated_tax #call this calculated_tax because if we call this tax it will override our other attribute
    product.price * 0.09
  end

  def calculated_total
    calculated_subtotal + calculated_tax
  end

end
