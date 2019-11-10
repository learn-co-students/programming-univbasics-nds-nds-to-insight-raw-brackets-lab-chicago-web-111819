$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  pp directors_database
  
  # directors_gross = {}
  # row_index = 0
  
  # while row_index < nds.length do
  #   column_index = 0
  #   gross = 0
  #   directors_gross[[directors_database][row_index][:name]] = gross
  #   while column_index < nds[row_index].length do
  #     inner_len = nds[row_index][column_index].length
  #     inner_index = 0
  #     while inner_index < inner_len do
  #       gross += nds[row_index][column_index][inner_index][:worldwide_gross]
  #       directors_gross[[directors_database][row_index][:name]] = gross
  #       inner_index += 1
  #     end
  #     column_index += 1
  #   end
  #   row_index += 1
  # end
  
  # directors_gross
  
  
  
  # row_index = 0
  # while row_index < directors_database.length do
  #   puts "Row #{row_index} has #{directors_database[row_index]} columns"
    
  #   column_index = 0
  #   while column_index < directors_database[row_index].length do
  #     coord = "#{row_index}, #{column_index}"
  #     inner_len = directors_database[row_index][column_index].length
  #     puts "\tCoordinate [#{coord}] points to an #{directors_database[row_index][column_index].class} of length #{inner_len}"
      
  #     inner_index = 0
  #     while inner_index < inner_len do
  #       puts "\t\t (#{coord}, #{inner_len}) is: #{directors_database[row_index][column_index][inner_index]}"
  #       inner_index += 1
  #     end
      
  #     column_index += 1
  #   end
    
  #   row_index += 1
  # end
  
  directors_gross = {}
  counter = 0

  while counter < directors_database.length do
    movies_gross = 0
    inner_counter = 0
    while inner_counter < directors_database[counter][:movies].length do
      movies_gross += directors_database[counter][:movies][inner_counter][:worldwide_gross]
      inner_counter += 1
    end
    directors_gross[directors_database[counter][:name]] = movies_gross
    counter += 1
  end
  
  directors_gross
  
end









