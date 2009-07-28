class AddTestData < ActiveRecord::Migration
  def self.up
    Album.delete_all
    Album.create(:name => 'Bitte Orca',
        :artist => 'Dirty Projectors', 
        :rating => '4',
        :image_url => '/images/bitte_orca.jpg',
        :date_added => Today)
  end

  def self.down
    Album.delete_all
  end
end
