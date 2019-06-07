class CreateRemovesAttributesFromOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :removes_attributes_from_orders do |t|
      remove_column :orders, :product_id, :integer
      remove_column :orders, :quantity, :integer

      t.timestamps
    end
  end
end
