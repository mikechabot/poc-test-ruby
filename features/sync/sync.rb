def checkBoxes(table)
  # Convert table into a hash where the first
  # column is the key and the second is the value
  ids = table.rows_hash.values
  ids.each { |id| touchById(id) }
end