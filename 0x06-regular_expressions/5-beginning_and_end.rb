#!/usr/bin/env ruby

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <input_string>"
  exit(1)
end

# Extract the input string from command-line arguments
input_string = ARGV[0]

# Define the regular expression pattern
regex_pattern = /^h.n$/

# Use the =~ operator to find a match in the input string
if input_string =~ regex_pattern
  puts input_string
else
  puts ""
end

