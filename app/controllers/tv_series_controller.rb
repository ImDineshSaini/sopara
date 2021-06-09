class TvSeriesController < ApplicationController

  def index
    @query = ''
    if params[:query].present?
      @query = params[:query]
      @tv_series = TvSeries.joins(:actors).where('celebrities.name LIKE ?', "%#{@query}%").uniq
    else
      @tv_series = TvSeries.all
    end
  end
end
