require 'pp'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # pp nds
  #row_index is each hash element in array of directors
  row_index = 0
  name = []
  adding_money = 0
  money = []
  results = {}
  while row_index < nds.length do
    #column_index is each hash element in array of movies
    column_index = 0
    name.push(nds[row_index][:name])
    grand_total_dir = 0
    while column_index < nds[row_index][:movies].length do
      adding_money += nds[row_index][:movies][column_index][:worldwide_gross]
    column_index +=1
    end
    money.push(adding_money)
    adding_money = 0
    row_index +=1
  end
results = Hash[name.zip money]
results
end
