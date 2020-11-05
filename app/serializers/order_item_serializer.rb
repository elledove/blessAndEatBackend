class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :menu_item_id, :quantity, :price, :name
end
