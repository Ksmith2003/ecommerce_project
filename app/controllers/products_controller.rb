class ProductsController < ApplicationController
  def index
    @products = Product.includes(:category).page params[:page]
  end

  def show
    @product = Product.find(params[:id])
  end

  def new_products
    @products = Product.where("created_at > ?", DateTime.now-3.days).order("created_at DESC").page params[:page]
  end

  def recently_updated
    @products = Product.where("updated_at > ?", DateTime.now-3.days).order("updated_at DESC").page params[:page]
  end
end
