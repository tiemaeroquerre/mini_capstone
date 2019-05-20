class Product < ApplicationRecord

  has_mamy :orders

 belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id) #the supplier method
  # end 
  has_many :images

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