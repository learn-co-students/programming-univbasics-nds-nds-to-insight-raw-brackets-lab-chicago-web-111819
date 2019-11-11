$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
directors_database

pp directors_database

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  
  row_index = 0 
  while row_index < directors_database.length do
    second_index = 0 
    sum = 0 
    while second_index < directors_database[row_index][:movies].length do 
      sum += directors_database[row_index][:movies][second_index][:worldwide_gross]
      second_index += 1 
    end
    name = directors_database[row_index][:name]
    result[name] = sum 
    row_index += 1 
  end 
  return result
  
end

pp directors_totals(directors_database)
