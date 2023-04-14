class CreateVacancies < ActiveRecord::Migration[7.0]
  def change
    create_table :vacancies do |t|
      t.date :date
      t.boolean :vacant
      t.references :flat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
