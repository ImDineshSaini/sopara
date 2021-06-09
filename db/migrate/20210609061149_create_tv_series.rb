class CreateTvSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :tv_series do |t|
      t.string :name
      t.integer :no_of_seasons
      t.date :release_on
      t.belongs_to :shoot_location
      t.belongs_to :genre
      t.timestamps
    end
  end
end
