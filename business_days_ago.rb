#!/usr/bin/env ruby

#   args: date, like 'DD-MM-YEAR'
#   returns: how many business days ago that was (+)
#            future dates will return negative business days (-)
#
#   Matt Feenstra, matt.a.feenstra@gmail.com, License GPLv3 (2023)

require 'business_time'

def business_days_ago(your_date)

=begin
  uncomment for testing / validation / playing around:
  
   puts date_prior
   puts "time.parse: #{Time.parse(date_prior)}"
  
   puts "business seconds ago: #{Time.parse(date_prior).
     business_time_until(Time.now)} secs"
  
   puts "div 60.0 = #{Time.parse(date_prior).
     business_time_until(Time.now) / 60.0} mins"
  
   puts "div 60.0 ^ 2 = #{Time.parse(date_prior).
     business_time_until(Time.now) / 3600.0} hours"
  
   puts "div (60.0 ^ 2) / 8.0 = #{Time.parse(date_prior).
     business_time_until(Time.now) / 3600.0 / 8.0} days"
=end

  Time.parse(your_date).business_time_until(Time.now) / 3600.0 / 8.0

end

puts "#{Time.parse(ARGV.first)} was #{business_days_ago(ARGV.first)} business days ago."
