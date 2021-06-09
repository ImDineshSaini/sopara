class TvSeriesController < ApplicationController

  def index
    @query = ''
    if params[:query].present?
      @query = params[:query]
      @tv_series = TvSeries.joins(:actors).where('celebrities.name LIKE ?', "%#{@query}%").uniq
    else
      @tv_series = TvSeries.includes(:actors, :directors, :genre, :shoot_location, :reviews).limit(100)
    end
  end
end
