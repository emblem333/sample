class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @variation = @product.variations.first
  end

  def ajax
    @selected_color = params[:color]
    @product = Product.find(params[:id])
    @variation = @product.variations.find_by(color: @selected_color)
  end
end
