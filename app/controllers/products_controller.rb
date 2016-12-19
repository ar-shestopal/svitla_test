class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  before_action :product_count

  def index
    @products = Product.all
  end

  def show
    respond_to do |format|
      format.js
    end
  end

  def add_to_cart
    ProductsCartService.add_to_cookies(cookies, params)
    @products_count = ProductsCartService.count_products(cookies)

    respond_to do |format|
      format.js
    end
  end

  def view_cart
    @products = ProductsCartService.products_from_cart(cookies)

    respond_to do |format|
      format.js
    end
  end

  def delete_from_cart
    @product_id = params[:id]
    ProductsCartService.delete_from_cart(cookies, @product_id)
    @products_count = ProductsCartService.count_products(cookies)

    respond_to do |format|
      format.js
    end
  end

  private

    def product_count
      @products_count = ProductsCartService.count_products(cookies)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
end
