$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"

def directors_totals(nds)
  director_total_gross = {}
  row_index = 0
  while row_index < nds.length do
    director_name = nds[row_index][:name]
    column_index = 0
    while column_index < nds[row_index][:movies].length do
      movie = nds[row_index][:movies][column_index]
      if director_total_gross[director_name]
        director_total_gross[director_name] += movie[:worldwide_gross]
      else
        director_total_gross[director_name] = movie[:worldwide_gross]
      end
    column_index += 1
    end
    row_index += 1
  end
  return director_total_gross
end
