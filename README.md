# polygon-ruby-client
Polygon.io API ruby client

Example usage:

### Client config
```ruby
client = Polygon::Api::Client.new(api_key: 'xxx')
```

### Trades
```ruby
client.trades(symbol: 'AAPL', date: '2020-08-14', options: {limit: 3})
```

### Aggregates
```ruby
client.aggregates(symbol: 'AAPL', multiplier: 2, timespan: 'minute', from: '1597941120000', to: '1597942920000')
client.aggregates(symbol: 'AAPL', multiplier: 3, timespan: 'minute', from: '2020-08-19', to: '2020-08-20')
```
