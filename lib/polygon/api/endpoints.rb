# frozen_string_literal: true

module Polygon
  module Api
    module Endpoints
      def trades(symbol:, date:, options: {})
        get("/v2/ticks/stocks/trades/#{symbol}/#{date}", { apiKey: api_key }.merge(options))
      end

      def all_trades(symbol:, date:, options: {}, &block)
        last_trade = nil
        loop do
          offset_options = last_trade ? options.merge(timestamp: last_trade&.dig(:t)) : options
          trades = trades(symbol: symbol, date: date, options: offset_options)[:results]
          trades.each { |trade| block.call(trade) }
          last_trade = trades.last
          break if trades.size < (options[:limit] || 50_000)
        end
      end

      def aggregates(symbol:, multiplier:, timespan:, from:, to:, options: {})
        get("/v2/aggs/ticker/#{symbol}/range/#{multiplier}/#{timespan}/#{from}/#{to}", { apiKey: api_key }.merge(options))
      end
    end
  end
end
