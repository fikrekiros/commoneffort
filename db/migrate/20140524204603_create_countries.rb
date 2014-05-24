class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :country_code
      t.string :continent
      t.string :notes

      t.timestamps
    end
  end
end
