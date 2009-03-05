#!/usr/bin/env ruby

require 'rubygems'
require 'eventmachine'

module Talker
  def post_init
    file = open("#{File.dirname(__FILE__)}/long_file.txt")
    @data = file.read
    puts "sending data : #{@data}"
    send_data @data
  end
end

EM.run do
  EM.connect 'localhost', 8888, Talker
end

