class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :initialize_session

  helper_method :cart
  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  def initialize_session
    session[:cart] ||= []
  end

  private

  def cart
    Product.find(session[:cart])
  helper_method :cms_pages

  private

  def cms_pages
    Page.all
  end
end
