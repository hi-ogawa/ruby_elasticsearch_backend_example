require './hotel'

module ImportHotels
  class << self
    def run(file_path)
      JSON.parse(File.read(file_path)).each do |h|
        Hotel.create({
          bc_id:     h['id'],
          name:      h['name'],
          address:   h['address'],
          zip:       h['zip'],
          hotel_url: h['hotel_url'],
          photo_url: h['photo_url'],
          location:  [h['longitude'].to_f, h['latitude'].to_f],
          desc:      h['desc_en'],
          preferred: h['preferred'].to_i,
          rate:      h['class'].to_i
        })
      end
    end
  end
end
