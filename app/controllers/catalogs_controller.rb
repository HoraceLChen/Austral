class CatalogsController < ApplicationController
  before_action :set_catalog, only: [:show, :destroy]

  def index
    @catalogs = Catalog.order(year: :desc, title: :asc)
  end

  def show
    @catalog = Catalog.includes(pages: :shoes).find(params[:id])
    @pages   = @catalog.pages.order(:page_number)
  end

  def new
    @catalog = Catalog.new
  end

  def create
    @catalog = Catalog.new(catalog_params)
    if @catalog.save
      redirect_to @catalog, notice: "Catalog was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @catalog.destroy
      redirect_to catalogs_path, notice: "Catalogue deleted."
    else
      redirect_to @catalog, alert: "Could not delete this catalogue."
    end
  end

  private

  def set_catalog
    @catalog = Catalog.find(params[:id])
  end

  def catalog_params
    params.require(:catalog).permit(:title, :year, :season, brands: [])
  end
end
