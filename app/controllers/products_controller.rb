class ProductsController < ApplicationController

  def index

  end

  def show
    @product = PrismicService.get_document(params[:id], api, ref)
  end
end