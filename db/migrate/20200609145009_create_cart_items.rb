class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.float :quantity
      t.string :status
      t.references :item, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
