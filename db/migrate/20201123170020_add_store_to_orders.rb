class AddStoreToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :store, null: false, foreign_key: true
  end
end
