# app/controllers/shoes_controller.rb
class ShoesController < ApplicationController
  def show
    @shoe = Shoe.includes(pages: :catalog).find(params[:id])
  end
end
