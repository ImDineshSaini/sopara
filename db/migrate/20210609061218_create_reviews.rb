  class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :review
      t.belongs_to :user
      t.belongs_to :tv_series
      t.timestamps
    end
  end
end
