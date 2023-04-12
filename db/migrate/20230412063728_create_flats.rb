class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :description
      t.integer :price_per_night
      t.string :address_one
      t.string :address_two
      t.string :unit_number
      t.string :zipcode
      t.string :country
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
