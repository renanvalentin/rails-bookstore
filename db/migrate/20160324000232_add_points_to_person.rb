class AddPointsToPerson < ActiveRecord::Migration
  def change
    add_column :people, :points, :number
  end
end
