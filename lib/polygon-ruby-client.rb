# frozen_string_literal: true

require 'faraday'
require 'oj'
require 'faraday_middleware'
require 'faraday_middleware/response_middleware'
require_relative 'faraday_middleware/parse_oj'

require_relative 'polygon/version'
require_relative 'polygon/logger'
require_relative 'polygon/api'
