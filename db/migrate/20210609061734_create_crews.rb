class CreateCrews < ActiveRecord::Migration[6.1]
  def change
    create_table :crews do |t|
      t.belongs_to :tv_series
      t.references :crewable, polymorphic: true
      t.timestamps
    end
  end
end
