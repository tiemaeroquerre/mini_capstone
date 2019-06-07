class CartedProduct < ApplicationRecord

  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true #this allows us to pass a nil value 



end
