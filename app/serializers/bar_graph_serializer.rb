class BarGraphSerializer < ActiveModel::Serializer
  attributes :id, :dataset_id, :title, :description, :xAxis, :flattenedSeries
end
