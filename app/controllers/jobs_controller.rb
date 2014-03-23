class JobsController < ApplicationController

  def index
    @document = PrismicService.get_document(api.bookmark("jobs"), api, ref)
    @jobs = api.form('jobs').submit(ref)
  end

  def show
    @document = PrismicService.get_document(api.bookmark("jobs"), api, ref)
    @job = PrismicService.get_document(params[:id], api, ref)
  end
end