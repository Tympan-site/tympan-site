#!/usr/bin/env ruby

require 'feedjira'

url = "https://openaudio.blogspot.com/feeds/posts/default"
feed = Feedjira::Feed.fetch_and_parse url

puts feed.title
puts feed.url

feed.entries.each do |entry|

  # Grab a title out of the existing URL:
  m = /\/([a-z0-9\-]+?)\.html$/.match(entry.url)
  target_file = entry.published.strftime("%Y-%m-%d") << "-" << m[1] << ".html"

  File.open('_posts/' << target_file, 'w') do |f|  
    f.puts "---"
    f.puts "layout: post"
    f.puts "title: " << entry.title
    f.puts "author: " << entry.author
    f.puts "---"
    f.puts "\n\n"
    f.puts entry.content
  end  
end
