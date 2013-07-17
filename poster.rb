#!/usr/bin/env ruby
require 'httparty'

endpoint=ARGV[0]
source_name=ARGV[1]
item_file=ARGV[2]

File.open(item_file, "r") do |file|
  while(line = file.gets)
    puts line
    HTTParty.post("http://#{endpoint}/item/#{source_name}", :body => {:text => line})
  end
end
