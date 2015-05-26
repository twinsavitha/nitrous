Given /^the input "([^"]*)"$/ do |input|
 	
  @input = input
 	 
end                                                                                                                                                                          
                                                                                                                                                                               

When /^the calculator is run$/ do
 	
  @output = `ruby calc.rb #{@input}`
  puts "putting the value"
  puts @output
  raise('Command failed!') unless $?.success?
 	
end
                                                                                                                                                                               
Then(/^the output should be "(.*?)"$/) do |arg1|                                                                                                                           
  expect(@output).to eq(arg1)
    
end    
 
	
