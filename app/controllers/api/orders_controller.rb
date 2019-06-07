class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index   
    @orders = current_user.orders #this is an association method order model - current_user is an instance of an actual user
    render 'index.json.jbuilder'
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end
  
  def create 
    # @order = Order.new(
    # product_id: params[:product_id], 
    # quantity: params[:quantity], 
    # user_id: current_user.id) #we pass the user_id using thie authorization header 
    # @order.subtotal = @order.calculated_subtotal
    # @order.tax = @order.calculated_tax #calls model method and @order.tax is how the attribute setter
    # @order.total = @order.calculated_total #we are calling these methods on the order that we just created
    # if @order.save
    #   render 'show.json.jbuilder'
    # else
    #   render json: {errors: @product.error.full_messages}, status: :unprocessable_entity
    # end

    @carted_product = current_user.carted_product.where(status: "carted")

    calculated_subtotal = 0
    @carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price 
    end #we can do .product.price because our carted products and already associated with the products table and we can request the price attribute frm the product table 
    @order = Order.new(
    user_id: current_user.id
    subtotal: calculated_subtotal
    tax: calculated_tax
    total: calculated_total)
    end #notice that a user passes none of these attributes!

    if @order.save
      @carted_products.update_all(status: "purchased", order_id: @order.id) #this an active record query we can call on an array of stuff to update all of the items that have been saved with the status purchased and their respective order id.
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.error.full_messages}, status: :unprocessable_entity
    end

end 