class CreateParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :participants do |t|
      t.belongs_to :tv_series
      t.references :castable, polymorphic: true
      t.timestamps
    end
  end
end
