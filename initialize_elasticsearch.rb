require 'yaml'
require 'logger'
require 'elasticsearch/persistence'

config = YAML.load_file('./elasticsearch.yml')[ENV['RUBY_ENV']]

Elasticsearch::Persistence.client =
  Elasticsearch::Client.new(
    host: config['host'],
    logger: Logger.new(File.new(config['log_file'], 'a'))
  )
