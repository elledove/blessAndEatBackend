class Order < ApplicationRecord
    belongs_to :user

    # has_many :order_items
    # has_many :menu_items, through: :order_items
    #  accepts_nested_attributes_for :menu_items, :order_items
end
