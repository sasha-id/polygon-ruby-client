# frozen_string_literal: true

module FaradayMiddleware
  class ParseOj < ResponseMiddleware
    dependency 'oj'

    define_parser do |body|
      Oj.load(body, mode: :compat, symbol_keys: true) unless body.strip.empty?
    end
  end
end

Faraday::Response.register_middleware oj: FaradayMiddleware::ParseOj
