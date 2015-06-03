require 'dotenv'
Dotenv.load

require 'sequel'
DB = Sequel.connect(ENV['DATABASE_URL'])

require 'cuba'
require 'cuba/render'
require 'json'
require 'tilt/haml'

# require 'rack/protection'
