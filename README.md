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

### All trades
```ruby
client.all_trades(symbol: 'AAPL', date: '2020-08-14'){ |trade| puts trade  }
client.all_trades(symbol: 'AAPL', date: '2020-08-14', options: {timestamp: 1597414943490858428, timestampLimit: 1597430760261736603}){ |trade| puts trade  }
```

### Aggregates
```ruby
client.aggregates(symbol: 'AAPL', multiplier: 2, timespan: 'minute', from: '1597941120000', to: '1597942920000')
client.aggregates(symbol: 'AAPL', multiplier: 3, timespan: 'minute', from: '2020-08-19', to: '2020-08-20')
```
