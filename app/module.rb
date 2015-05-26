       module ShiftMeansAppend
          def <<(x)
          end
        end

        class String
          include ShiftMeansAppend
        end

        class Array
          include ShiftMeansAppend
        end

        def append_to_self(x)
          unless x.is_a? ShiftMeansAppend
            raise ArgumentError, "I can't trust this object's left-shift operator."
          end
         puts x  
        end 
        append_to_self [4,5,6]