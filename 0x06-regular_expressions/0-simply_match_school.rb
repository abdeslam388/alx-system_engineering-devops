#!/usr/bin/env ruby

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <input_string>"
  exit(1)
end

# Extract the input string from command-line arguments
input_string = ARGV[0]

# Define the regular expression pattern for matching "School"
regex_pattern = /School/

# Use the scan method to find matches in the input string
matches = input_string.scan(regex_pattern)

# Join the matches (if any) and print the result
puts matches.join

