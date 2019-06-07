class ProductsController < ApplicationController
  def index 
    @products = Product.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @product = Product.new(
          name: params[:name],
          price: params[:price],
          # image_url: params[:image_url],
          description: params[:description],
          in_stock: params[:in_stock],
          supplier_id: params[:supplier_id])
      if @product.save
        redirect_to "/products/#{@product.id}"
      end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.html.erb'
  end

  def edit 
    @product = Product.find(params[:id])
    render 'edit.html.erb'
  end

  def update 
    @product = Product.find(params[:id])
    
    @product.name = params[:name] 
    @product.price = params[:price] 
    # @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description]
    @product.in_stock = params[:in_stock]

    @product.save
    redirect_to "/products/#{@product.id}"
  end


  def destroy 
    @product = Product.find(params[:id])
    @product.destroy 
  end 

end

