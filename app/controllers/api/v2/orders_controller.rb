class Api::V2::OrdersController < ApplicationController
    include CurrentUserConcern

    def index
        # binding.pry
        orders = @current_user.orders.all
        
        render json: orders
    end

    def create
        
        order = @current_user.orders.build(order_params)
        # order = Order.create(order_params)
        if order.save
            render json: order
        else
            render json: {message: ' Awww Shucks! Error Creating Order. Try Again!'}
        end
    end


    # def update
    #     order.update(order_params)
    # end


    def show
    end



    private
         

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
