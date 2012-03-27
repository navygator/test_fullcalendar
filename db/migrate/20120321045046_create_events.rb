class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start_at
      t.datetime :end_at
      t.boolean :all_day, :boolean, :default => false
      t.string :color, :default => "#6F93DB"
      t.integer :event_series_id

      t.timestamps
    end
  end
end
