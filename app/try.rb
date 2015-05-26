 class Module
          def class_attr_reader(*symbols)
            symbols.each do |symbol|
              self.class.send(:define_method, symbol) do
                class_variable_get("@@#{symbol}")
              end
            end
          end

          def class_attr_writer(*symbols)
            symbols.each do |symbol|
              self.class.send(:define_method, "#{symbol}=") do |value|    
                class_variable_set("@@#{symbol}", value)
              end
            end
          end

          def class_attr_accessor(*symbols)
            class_attr_reader(*symbols)
            class_attr_writer(*symbols)
          end 
        end

class Fate
   class_attr_reader :number_instantiated
          NAMES = ['Klotho', 'Atropos', 'Lachesis']
  SAV=3 ################################################# vry ipmt .. shud start wid CAPITAL ! .. this is a const
          @@number_instantiated = 0 ##############class var.. acts lik static
  ### local var cant b used in actions 
          def plug
            puts "names"
            puts NAMES
            puts "sAV"
            puts SAV-1 
            if @@number_instantiated >= NAMES.size
              raise ArgumentError, 'Sorry, there are only three Fates.'
            end
            @name = NAMES[@@number_instantiated]
            @@number_instantiated += 1
            puts "I give you… #{@name}!"
          end 
        end

       a = Fate.new
a.plug
a.plug
a.plug
puts Fate.number_instantiated