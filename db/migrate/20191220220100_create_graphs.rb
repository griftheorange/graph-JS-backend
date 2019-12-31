class CreateGraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :graphs do |t|
      t.string :graph_type
      t.belongs_to :dataset

      t.timestamps
    end
  end
end
