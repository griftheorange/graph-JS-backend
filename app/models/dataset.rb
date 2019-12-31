class Dataset < ApplicationRecord
    belongs_to :user
    has_many :graphs, dependent: :destroy

    validates :name, presence: true
    validates :user_id, presence: true
    validates :name, uniqueness: {scope: :user_id}
end
