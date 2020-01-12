class PieGraphSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :xAxis, :flattenedSeries, :dataset_id
end
