#!/usr/bin/env ruby
require 'httparty'

endpoint=ARGV[0]
source_name=ARGV[1]

HTTParty.delete("http://#{endpoint}/item/#{source_name}")
