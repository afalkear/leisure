class CreateAlbums < ActiveRecord::Migration
  def self.up
    create_table :albums do |t|
      t.string :name
      t.string :artist
      t.integer :song
      t.integer :tag
      t.boolean :listened_to
      t.integer :rating
      t.integer :mood
      t.string :image_url
      t.text :review
      t.integer :links
      t.integer :recommended_by
      t.integer :year
      t.date :date_added

      t.timestamps
    end
  end

  def self.down
    drop_table :albums
  end
end
