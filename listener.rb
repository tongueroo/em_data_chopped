#!/usr/bin/env ruby

require 'rubygems'
require 'eventmachine'

module Listener
  def receive_data(data)
    puts "!!!!!"
    puts data.length
  end
end

puts "listening"
EM.run do
  EM.start_server "localhost", 8888, Listener
end


