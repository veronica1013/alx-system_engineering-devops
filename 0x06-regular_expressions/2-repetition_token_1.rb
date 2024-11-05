#!/usr/bin/env ruby

if ARGV[0]
  puts ARGV[0].scan(/^hb*t+n$/).join
else
  puts "Please provide an argument."
end
