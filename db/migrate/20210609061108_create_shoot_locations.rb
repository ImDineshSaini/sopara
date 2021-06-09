class CreateShootLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :shoot_locations do |t|
      t.string :name
      t.belongs_to :country
      t.timestamps
    end
  end
end
