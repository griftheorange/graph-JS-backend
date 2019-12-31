class CreateBarGraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :bar_graphs do |t|
      t.string :title
      t.string :description
      t.string :xAxis
      t.string :flattenedSeries

      t.timestamps
    end
  end
end
