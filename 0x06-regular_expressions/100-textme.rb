#!/usr/bin/env ruby

log_entry = ARGV[0]

# Regular expression to capture sender, receiver, and flags
match_data = log_entry.match(/\[from:([^]]+)\] \[to:([^]]+)\] \[flags:([^]]+)\]/)

if match_data
  sender = match_data[1]
  receiver = match_data[2]
  flags = match_data[3]
  
  # Output the required format: [SENDER],[RECEIVER],[FLAGS]
  puts "#{sender},#{receiver},#{flags}"
else
  puts "No match found"
end
