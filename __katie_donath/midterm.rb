require 'imdb'
require 'pry'

puts "Welcome to Katie's movie game!"
puts "Search a movie title and I will return the top result"
search = gets.chomp

#binding.pry

i = Imdb::Search.new(search)
first_search_result = i.movies.first.title
second_search_result = i.movies[1].title

#binding.pry

puts first_search_result
puts "Is this correct?"
response = gets.chomp

if response == "no"
	puts second_search_result
	puts "Is this correct?"
	response = gets.chomp
	if response == "yes"
		puts "yay"
	end
end
#binding.pry

puts "Want to know cast members?"
response = gets.chomp
if response == "no"
	puts "Thanks for visting"
elsif response == "yes"
	i.movies.first.cast_members.each do |cast_member|
		puts cast_member
	end
end





binding.pry