class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :total, :name_for_order
end
