class Product < ApplicationRecord
  def is_discounted?
      price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax 
  end


  validates :name, presence:true, uniqueness:true
  validates :price, presence:true, numericality: { greater_than: 0}
  validates :image_url, presence:true
  validates :description, length: {within: 10..1000}

end