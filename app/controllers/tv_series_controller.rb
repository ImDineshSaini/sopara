class TvSeriesController < ApplicationController

  def index
    @query = ''
    if params[:query].present?
      @query = params[:query].downcase
      @tv_series = TvSeries.joins(:actors).where(celebrities: {name: @query})
    else
      @tv_series = TvSeries.all
    end
  end
end
