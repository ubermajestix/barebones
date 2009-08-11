require 'rubygems'
require 'lib/barebones'

class BareBonesSite < BareBones::App    
  BareBones.initialize(:environment=>ENV['RACK_ENV'] || "development")
end

run BareBonesSite.new