require 'rails_helper'

RSpec.describe 'TvSeries', type: :request do
  describe 'GET /index' do
    it 'returns http success on home page' do
      get '/'
      expect(response).to have_http_status(:success)
    end

    it 'returns http success on search page' do
      get '/?query=x'
      expect(response).to have_http_status(:success)
    end
  end

end
