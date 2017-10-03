class ShowsController < ApplicationController
  
  def shows_params
    params.require(:shows).permit([:title, :series, :description, :image, :programmeID])
  end

  def index
    @shows = Shows.all
    render :json => @shows
  end

  def create
    shows = Shows.create(shows_params)
    render :json => shows
  end

end