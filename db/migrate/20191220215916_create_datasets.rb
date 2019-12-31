class CreateDatasets < ActiveRecord::Migration[6.0]
  def change
    create_table :datasets do |t|
      t.string :name
      t.string :description
      t.string :csv_url
      t.belongs_to :user

      t.timestamps
    end
  end
end
