class Animal
  attr_accessor :legs
  attr_accessor :type
  def color
    puts "the colour of mango is #{@colour}"
  end
  def seed
    puts "the colour of apple is #{@seed}"
  end
end

f=Fruit.new
f.mcolour="yellow"
f.acolour="red"
f.mango
f.apple
