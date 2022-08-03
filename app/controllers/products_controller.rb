class ProductsController < ApplicationController

  # GET /products or /products.json
  def index
    if params[:query].present?
      @products = Product.where("name like ?", "%#{params[:query]}%")
    else
      @products = Product.all
    end
  end
  
  # # GET /products/new
  def new
    @product = Product.new
    @product.properties.build
  end


  # POST /products or /products.json
  def create  
    @product = Product.new(product_params)
    if @product.save!
      flash.now[:notice] = "Catch successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

    def product_params
      params.require(:product).permit(:name,:upc,:available_on, properties_attributes: [:name, :value])
    end
end
