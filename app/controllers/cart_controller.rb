class CartController < ApplicationController
  def add
    session[:cart] << params[:product_id]
    flash[:notice] = "Added the item to the cart"

    redirect_to products_path
  end

  def destroy
  end
end
