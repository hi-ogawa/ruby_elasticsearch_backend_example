require './hotel'
require './import_hotels'

desc 'import hotels'
task :import_hotels, [:file_path] do |_, args|
  Hotel.create_index!
  ImportHotels.run(args[:file_path])
end
