# frozen_string_literal: true

module Polygon
  module Api
    module Endpoints
      def trades(symbol, date, options = {})
        get("/v2/ticks/stocks/trades/#{symbol}/#{date}", { apiKey: api_key }.merge(options))
      end
    end
  end
end
