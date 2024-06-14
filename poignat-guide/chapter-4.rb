require_relative 'wordlist'


print "Enter your new idea: " 
idea = gets
CODE_WORDS.each do |real, code| 
  idea.gsub!( real, code )
end

# Save the jibberish to a new file
print "File encoded.  Please enter a name for this idea: " 
idea_name = gets.strip
File::open( "idea-" + idea_name + ".txt", "w" ) do |f|
  f << idea
end