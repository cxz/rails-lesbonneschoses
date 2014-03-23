class PostsController < ApplicationController
  before_action :set_categories
  layout 'blog'


  def index
    category = params[:category]
    @posts = api.form('blog').submit(ref)
    #.query(category.blank?? '': '[[:d = at(my.blog-post.category, #{category})]]')
  end

  def show
    @post = PrismicService.get_document(params[:id], api, ref)

    related_product_ids = @post['blog-post.relatedpost'].fragments.map(&:id)
    @related_posts = PrismicService.get_documents(related_product_ids, api, ref) #check if broken?

    related_product_ids = @post['blog-post.relatedproduct'].fragments.map(&:id) #check if broken?
    @related_products = PrismicService.get_documents(related_product_ids, api, ref)
  end

  def set_categories
    @categories ||= ["Announcements", "Do it yourself", "Behind the scenes"]
  end
end