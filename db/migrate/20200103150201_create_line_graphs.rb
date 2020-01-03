class CreateLineGraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :line_graphs do |t|
      t.string :title
      t.string :description
      t.string :xAxis
      t.string :flattenedSeries
      t.belongs_to :dataset, null: false, foreign_key: true

      t.timestamps
    end
  end
end
