class AddSupplierIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :supplier_id, :integer #supplier is the farmer, product is the cow, cow gets the brand 
  end
end
