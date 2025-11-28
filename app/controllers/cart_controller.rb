class CartController < ApplicationController
  def add
    session[:cart] << params[:product_id]
    flash[:notice] = "Added the item to the cart"
  end

  def destroy
  end
end
