class AddAlldayToEvents < ActiveRecord::Migration
  def change
    remove_column :events, :allday
    add_column :events, :all_day, :boolean, :default => false
  end
end
