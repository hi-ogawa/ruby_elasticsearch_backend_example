# Hotel Information Suggestion Engine

## Development

```
$ docker-compose up -d elasticsearch
$ docker-compose run ruby bash
$# bundle
$# bundle exec rake import_hotels['./data/asia_all.json']
$# bundle exec pry -r './hotel'
pry > Hotel.count
=> 8057
pry > Hotel.search(query: { match: { name: 'Tokyo' } }).map(&:name)
["Conrad Tokyo",
 "Tokyo Hutte",
 "Tokyo Backpackers",
 "Tokyo Inn",
 "Mercure Hotel Ginza Tokyo",
 "Hilton Tokyo Hotel",
 "Grand Hyatt Tokyo",
 "Tokyo Marriott Hotel",
 "Tokyo Grand Hotel",
 "IBIS Tokyo Shinjuku"]
```

## TODO

- sort by `rate` and `preferred` with `location` closeness
  - start with no pagination
- setup http api server
