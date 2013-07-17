#!/usr/bin/env ruby
require 'HTTParty'

endpoint = ARGV[0]
name = ARGV[1]

HTTParty.put("http://#{endpoint}/source/#{name}", :body => {:image_url => ARGV[2]})
