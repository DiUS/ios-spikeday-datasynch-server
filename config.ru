require 'bundler'
Bundler.require

# Rack::CoreData requires a Sequel connection to a database
DB = Sequel.connect(ENV['DATABASE_URL'] || "postgres://localhost:5432/coredata")

run Rack::CoreData('/Users/anthony/work/ios-spikeday-datasynch/ToDo/ToDo/ToDo.xcdatamodeld')
