class AddColumnToBarGraphs < ActiveRecord::Migration[6.0]
  def change
    add_column :bar_graphs, :dataset_id, :bigint
  end
end
