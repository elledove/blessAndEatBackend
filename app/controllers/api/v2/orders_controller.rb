class Api::V2::OrdersController < ApplicationController

    def index
        orders = Order.all
        
        render json: orders
    end

    def create
        binding.pry
        order = Order.create(order_params)
        if order.save
            render json: order
        else
            render json: {message: ' Awww Shucks! Error Creating Order. Try Again!'}
        end
    end


    def update
        order.update(order_params)
    end


    def show
    end



    private
         def set_user
             @user = User.find(params[:user_id])
         end

        # How do we add items from the menu to the current order? Here or in state?
        def add_items_to_order
           params[:order][:menu_item_ids]
           
        end

    # def order_params
    #     params.require(:order).permit(:user_id,:total,:name_for_order,:menu_item_ids)
    # end

    def order_params
        params.require(:order).permit(:name_for_order, menu_item_ids:[])
    end




end
