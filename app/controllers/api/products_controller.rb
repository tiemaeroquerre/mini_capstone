class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    @products = Product.all
     
    if params[:search] #this is the key for the key value pairing ex. search=gummy
      @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.where("price < ?", 10)
    end #this is written to just show the discounted items ... in insominia we can only write discount = true because any string is considered truthy (aka true) --> we need to write more code to speciifcally account for returning false values

    if params[:sort] == "price"
      if params[:sort_order] == "desc"
        @products = @products.order(price: :desc)
      else
        @products = @products.order(:price)
      end #GO OVER THIS AFTER CLASS
    end

    # if params[:sort] == "price"
    #   @products = @products.order(:price)
    # end
    
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products 
    end

    render 'index.json.jbuilder'
  end

  # original index action -> @products = Product.all
  #   render 'index.json.jbuilder'

  def show
      @product = Product.find(params[:id])
      render 'show.json.jbuilder'
  end

  def create
      @product = Product.new(
          name: params[:name],
          price: params[:price],
          # image_url: params[:image_url],
          description: params[:description],
          in_stock: params[:in_stock])
      if @product.save
        render 'show.json.jbuilder'
      else 
        render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
      end
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    # @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
    
      if @product.save
        render 'show.json.jbuilder'
      else 
        render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
      end

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "Product successfully destroyed!"}
end
  end 
