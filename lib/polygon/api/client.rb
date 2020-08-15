# frozen_string_literal: true

module Polygon
  module Api
    class Client
      include Endpoints
      include Connection
      include Request
      include Config

      def initialize(options = {})
        Config::ATTRIBUTES.each do |key|
          send("#{key}=", options[key] || Polygon::Api.config.send(key))
        end
      end
    end
  end
end
