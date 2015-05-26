Given /^a board like this:$/ do |table|
 	
  @board = table.raw
  puts "board"
  puts @board
  puts "individual element"
  puts @board[2][0]
  puts "individual element end"
end
 	
 	
When /^player x plays in row (\d+), column (\d+)$/ do |row, col|
 	puts "all"
  p row
  p col
  p row.to_i
  p col.to_i
  p row
  p col
  row, col = row.to_i, col.to_i
  p row
  p col
  
 	  @board[row][col] = 'x'
end

 	
Then /^the board should look like this:$/ do |table|
 	
  # table is a Cucumber::Ast::Table
 	
 table.diff!(@board)
 	
end
