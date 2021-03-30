class ProductsController < ApplicationController
  def index
    @products = Product.all

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)

      respond_to do |format|
        if @product.save
          format.html{redirect_to products_path :index, notice:'Produto Criado'}
        else
          format.html{render :new}
        end
      end
    end

    def product_params
      params.require(:product).permit(:name,:value, :restaurante_id)
    end

  end
end
