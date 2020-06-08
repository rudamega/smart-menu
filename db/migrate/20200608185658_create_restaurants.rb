class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :category
      t.boolean :open
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
