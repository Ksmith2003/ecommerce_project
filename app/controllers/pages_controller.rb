class PagesController < ApplicationController
  def show
    redirect_to page_path(@page.permalink)
  end

  def permalink
    @page = Page.find_by(permalink: params[:permalink])
  end
end
