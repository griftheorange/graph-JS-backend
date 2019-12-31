class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :password, :datasets, :graphs
end