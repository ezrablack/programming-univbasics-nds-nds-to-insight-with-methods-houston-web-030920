
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  
  directors = director_data
  
  total_movie_gross = 0 
  movie_counter = 0
  while movie_counter < directors[:movies].count do 
    total_movie_gross += directors[:movies][movie_counter][:worldwide_gross]
    movie_counter += 1 
  end
  return total_movie_gross
end

#______________________________________________________#

def directors_totals(nds)
  nds.each do |d|
    
  result = {}
 
  grand_totals = {}
  directors = 0 
    while directors < all_directors.count do
      worldwide_gross = 0 
      movie_counter = 0
      while movie_counter < all_directors[directors][:movies].count do
        worldwide_gross += gross_for_director(all_directors)
        movie_counter += 1 
      end
      directors += 1
    end
    return grand_totals
end


#total_movie_gross = 0 
#    movie_counter = 0 
#    while movie_counter < all_directors[directors][:movies][movie_counter][:worldwide_gross].count do
#      total_movie_gross += gross_for_director(all_directors)
#      result[all_directors[directors][:name]] = total_movie_gross
#      movie_counter += 1 
#    end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }