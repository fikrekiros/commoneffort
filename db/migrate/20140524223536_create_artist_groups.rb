class CreateArtistGroups < ActiveRecord::Migration
  def change
    create_table :artist_groups do |t|
      t.string :name
      t.integer :member_count
      t.references :country, index: true

      t.timestamps
    end
  end
end
