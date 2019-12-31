class User < ApplicationRecord
    has_many :datasets, dependent: :destroy
    has_many :bar_graphs, through: :datasets
end
