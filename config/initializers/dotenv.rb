require 'dotenv/load'
require 'dotenv'
return Dotenv.load(ENV['SECRET_PATH']) if ENV['SECRET_PATH'].present?
