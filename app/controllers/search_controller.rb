class SearchController < ApplicationController
  def index
    @query = params[:query]

    @devices = Device.where("name like '#{@query}%'")
  end
end
