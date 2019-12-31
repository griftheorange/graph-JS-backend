class DropGraphs < ActiveRecord::Migration[6.0]
  def change
    drop_table :graphs
  end
end
