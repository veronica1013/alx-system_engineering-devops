#!/usr/bin/env ruby

if ARGV[0]
  match = ARGV[0].match(/^hb{1}t{1,4}n$/)
  if match
    puts match[0]
  else
    puts "No match"
  end
else
  puts "Please provide an argument."
end
