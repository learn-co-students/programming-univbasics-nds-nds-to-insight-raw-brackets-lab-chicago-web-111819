require 'pp'
require 'pry'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
          hash_index = 0  
          result = {}  
        
        
    while hash_index < nds.length do  
      directors = nds[hash_index][:name]# takes entire aoh, first hash, key and value
      result[directors] = 0  # gt is hash
      movie_index = 0
      
        while movie_index < nds[hash_index][:movies].length do 
          # pp nds[hash_index][:movies][movie_index][:worldwide_gross]
          result[directors] += nds[hash_index][:movies][movie_index][:worldwide_gross]
          movie_index += 1
        end
      

      hash_index += 1
                # result[nds[hash_index][:name]] = gross_total
                # result[nds[hash_index] = gross_total
    end
  
    pp result
                #
# end
# # with coresponding value being their total grosses$LOAD_PATH.unshift(File.dirname(__FILE__))
# require 'directors_database'

# def directors_totals(nds)
#   director_index = 0
#   totals = {}

#   while director_index < nds.length do
#     director_name = nds[director_index][:name]
#     totals[director_name] = 0
#     movie_index = 0

#     while movie_index < nds[director_index][:movies].length do
#       totals[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
#       movie_index += 1
#     end

#     director_index += 1
#   end

#   pp totals
# end
   
  
    
     
#   # Remember, it's always OK to pretty print what you get *in* to make sure
#   # that you know what you're starting with!
#   #
#   #
#   # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
#   # result = {
#   # }
#   #
#   # Use loops, variables and the accessing method, [], to loop through the NDS
#   # and total up all the
#   # ...
#   # ...
#   # ...
#   #
#   # Be sure to return the result at the end!


#   nil
end

# #psuedo code

# # pull out director's 
# #name in form of key
# # create new hash
# # create key for directors name