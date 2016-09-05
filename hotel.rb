require './initialize_elasticsearch'
require 'elasticsearch/persistence/model'

class Hotel
  include Elasticsearch::Persistence::Model

  index_name ['hotels', ENV['RUBY_ENV']].join('-')

  attribute :name,      String
  attribute :address,   String
  attribute :zip,       String
  attribute :hotel_url, String
  attribute :photo_url, String
  attribute :desc,      String

  # booking.com id
  attribute :bc_id,     String

  # [longitude, latitude]
  attribute :location,  Array, mapping: { type: 'geo_point' }

  # rating from 0 to 5
  attribute :rate,      Integer, mapping: { type: 'integer' }

  # booking.com preferred property flag (0 or 1)
  attribute :preferred, Integer, mapping: { type: 'integer' }

  class << self
    def custom_search(lat, lng, page: 1, per_page: 30)
    end
  end
end
