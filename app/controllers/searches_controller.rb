class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp= Faraday.get
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = TD1CMYG4V3NGX10QIJFNHMY5X4X1OFKNKA5G5NVXUUXORGTA
      req.params['client_secret'] = EMGJNO2W4X2N25ELKJRNZY5JXALJVAYYNC5INYNIK0YKMIWX
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'

  end
end
