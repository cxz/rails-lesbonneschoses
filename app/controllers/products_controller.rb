class ProductsController < ApplicationController

  def index
    @products = api.form('products').submit(ref)
    @categories = categories
  end

  def show
    @product = PrismicService.get_document(params[:id], api, ref)
    related_product_ids = @product['product.related'].fragments.map(&:id) #check if broken?
    @related_products = PrismicService.get_documents(related_product_ids, api, ref)
  end
end