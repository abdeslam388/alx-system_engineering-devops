#!/usr/bin/env ruby

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <log_line>"
  exit(1)
end

# Extract the log line from the command-line argument
log_line = ARGV[0]

# Regular expression pattern to match the required information
regex_pattern = /\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/

# Use regex pattern to extract sender, receiver, and flags
match = log_line.match(regex_pattern)

# Check if a match was found and print the result
if match
  sender = match[1]
  receiver = match[2]
  flags = match[3]
  puts "#{sender},#{receiver},#{flags}"
else
  puts "Invalid log line format."
end

