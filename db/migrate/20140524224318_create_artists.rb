class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.date :join_date
      t.date :depart_date
      t.references :artist_group, index: true

      t.timestamps
    end
  end
end
