class AddStartendColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :start, :datetime
    add_column :events, :end, :datetime
    add_column :events, :color, :string, :default => "#6F93DB"

    remove_column :events, :start_at
    remove_column :events, :end_at
  end
end
