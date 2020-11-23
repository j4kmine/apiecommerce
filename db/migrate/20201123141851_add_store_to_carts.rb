class AddStoreToCarts < ActiveRecord::Migration[6.0]
  def change
    add_reference :carts, :store, null: false, foreign_key: true
  end
end
