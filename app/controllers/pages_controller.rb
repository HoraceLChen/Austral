# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def show
    @page    = Page.includes(:catalog, :shoes).find(params[:id])
    @catalog = @page.catalog
    @shoes   = @page.shoes.order(:name)
  end
end
