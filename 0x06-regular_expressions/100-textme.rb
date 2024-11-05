#!/usr/bin/env ruby

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: ./100-textme.rb '<log_entry>'"
  exit
end

# Get the log entry from the command-line argument
log_entry = ARGV[0]

# Regular expression to capture sender, receiver, and flags
match_data = log_entry.match(/\[from:([^]]+)\] \[to:([^]]+)\] \[flags:([^]]+)\]/)

if match_data
  # Extract matched groups for sender, receiver, and flags
  sender = match_data[1]
  receiver = match_data[2]
  flags = match_data[3]
  
  # Output the required format: [SENDER],[RECEIVER],[FLAGS]
  puts "#{sender},#{receiver},#{flags}"
else
  # Output error message if pattern doesn't match
  puts "No match found"
end
