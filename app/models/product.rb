class Product < ApplicationRecord

  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :carted_products

  has_many :orders, through: :carted_products
  
  # has_many :users, through: :carted_products
  #we don't need to know every instance of the user that has every carter this product 



 belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id) #the supplier method
  # end 
  has_many :images

  def category_names
    categories.map { |category| category.name }
  end

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
  validates :description, length: {within: 10..1000}

end