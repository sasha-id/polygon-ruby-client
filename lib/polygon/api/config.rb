# frozen_string_literal: true

module Polygon
  module Api
    module Config
      extend self

      ATTRIBUTES = %i[
        proxy
        user_agent
        ca_path
        ca_file
        logger
        timeout
        open_timeout
        endpoint
        api_key
      ].freeze

      attr_accessor(*Config::ATTRIBUTES)

      def reset!
        self.endpoint = 'https://api.polygon.io'
        self.api_key = ENV['POLYGON_API_KEY']
        self.user_agent = "Polygon Ruby Client/#{Polygon::VERSION}"
        self.ca_path = defined?(OpenSSL) ? OpenSSL::X509::DEFAULT_CERT_DIR : nil
        self.ca_file = defined?(OpenSSL) ? OpenSSL::X509::DEFAULT_CERT_FILE : nil
        self.proxy = nil
        self.logger = nil
        self.timeout = nil
        self.open_timeout = nil
      end
    end

    class << self
      def configure
        block_given? ? yield(Config) : Config
      end

      def config
        Config
      end
    end
  end
end

Polygon::Api::Config.reset!
