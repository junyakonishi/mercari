class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :tel, null: false
      t.string :post_code, null: false
      t.integer :prefecture_id, null: false
      t.string :city, null: false
      t.string :block_number, null: false
      t.string :building_name, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
