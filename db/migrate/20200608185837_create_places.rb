class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
