class AddColumnToTable < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :plus_code, :string
  end
end
