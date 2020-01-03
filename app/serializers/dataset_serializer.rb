class DatasetSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :csv_url, :user_id, :bar_graphs, :line_graphs
end