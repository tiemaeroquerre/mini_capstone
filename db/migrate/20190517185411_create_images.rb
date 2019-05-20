class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
