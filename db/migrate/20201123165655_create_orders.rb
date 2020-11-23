class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_id
      t.string :cart_id
      t.decimal :price
      t.integer :qty

      t.timestamps
    end
  end
end
