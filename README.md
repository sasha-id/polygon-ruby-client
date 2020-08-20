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
```ruby
{
          :ticker => "AAPL",
      :queryCount => 413,
    :resultsCount => 15,
        :adjusted => true,
         :results => [
        [ 0] {
             :v => 87270,
            :vw => 469.26135,
             :o => 469.4074,
             :c => 469.2443,
             :h => 469.4074,
             :l => 469.1,
             :t => 1597941120000
        },
        [ 1] {
             :v => 63410,
            :vw => 469.27466,
             :o => 469.26,
             :c => 469.3,
             :h => 469.38,
             :l => 469.195,
             :t => 1597941240000
        },
        [ 2] {
             :v => 71687,
            :vw => 469.06202,
             :o => 469.24,
             :c => 469.1279,
             :h => 469.27,
             :l => 468.97,
             :t => 1597941360000
        },
        [ 3] {
             :v => 124968,
            :vw => 469.42717,
             :o => 469.15,
             :c => 469.74,
             :h => 469.74,
             :l => 469,
             :t => 1597941480000
        }
        # ....
    ],
          :status => "OK",
      :request_id => "xxxxxxxxx"
}
```