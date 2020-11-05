class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :menu_item_id
      t.integer :quantity
      t.float :price
      t.string :name

      t.timestamps
    end
  end
end
