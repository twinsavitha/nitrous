 class String
          def scramble
            puts "hey hey"
            split(//).sort_by { rand }.join
          end
        end
class UnpredictableString < String
          puts "here"
          def scramble
            split(//).sort_by { rand }.join
          end
          def inspect
            scramble.inspect
            puts "inspecting"
          end
  def fast
    puts "fast checking"
  end
        end
      puts   str = UnpredictableString.new("It was a dark and stormy night.")  
    puts str.scramble
puts str.inspect
puts str.inspect