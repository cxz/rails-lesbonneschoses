class PagesController < ApplicationController
  def home
    @categories = {
        :"Macaron" => "Macarons",
        :"Cupcake" => "Cup Cakes",
        :"Pie" => "Little Pies"
    }
    @products = api.form('products').page('1').page_size('15').submit(ref)
    @featured = api.form('featured').page('1').page_size('5').submit(ref)
  end

  def about
    @document = PrismicService.get_document(api.bookmark("about"), api, ref)
  end

  def blog

  end

  def search

  end

end