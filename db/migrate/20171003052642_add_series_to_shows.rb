class AddSeriesToShows < ActiveRecord::Migration
  def change
    add_column :shows, :series, :integer
  end
end
