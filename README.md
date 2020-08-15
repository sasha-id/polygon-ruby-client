# polygon-ruby-client
Polygon.io API ruby client

Example usage:
```ruby
client = Polygon::Api::Client.new(api_key: 'xxx')
client.trades('AAPL', '2020-08-14', {limit: 100})
```
