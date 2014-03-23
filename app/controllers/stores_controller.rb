class StoresController < ApplicationController

  def index
    @document = PrismicService.get_document(api.bookmark("stores"), api, ref)
    @stores = api.form('stores').submit(ref)
  end

  def show
    @store = PrismicService.get_document(params[:id], api, ref)
    #TODO:view
  end
end