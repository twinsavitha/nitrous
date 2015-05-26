class Greeter
  attr_accessor :savi
  def plug
    puts "Hello world #{@savi}"
  end
end
h=Greeter.new
h.plug
h.savi ="changing"
h.plug
puts h.savi


