require "rubygems"
require "pry"
require "launchy"

def check_if_user_gave_input
  puts "What would you like to know ?"
  puts ARGV
  abort("mkdir: missing input") if ARGV.empty?
end

def open_browser_with_user_input
  Launchy.open("https://www.google.com/search?q=#{ARGV}")
end

def perform
  check_if_user_gave_input
  open_browser_with_user_input
end

perform
