# polygon-ruby-client
Polygon.io API ruby client

Example usage:

### Trades
```ruby
client = Polygon::Api::Client.new(api_key: 'xxx')
client.trades('AAPL', '2020-08-14', {limit: 100})
```

### Aggregates
```ruby
client.aggregates(symbol: 'AAPL', multiplier: 2, timespan: 'minute', from: '1597941120000', to: '1597942920000')
client.aggregates(symbol: 'AAPL', multiplier: 3, timespan: 'minute', from: '2020-08-19', to: '2020-08-20')
```
