#!/usr/bin/env ruby

# Check if there is an argument provided
if ARGV[0]
  # Scan the argument with the regex and join results if matched
  puts ARGV[0].scan(/^hbt{0,4}n$/).join
else
  puts "Please provide an argument."
end
