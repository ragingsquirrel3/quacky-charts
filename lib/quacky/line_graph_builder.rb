module Quacky
  class LineGraphBuilder
    
    @data = []

     def initialize(init_data = [])
       @data = init_data
     end
     
     def get_data
       output = []
       
       @data.each do |event|
         output << {
           x: event[:time].to_i * 1000,
           y: event[:data]
         }
       end
       
       output.to_json
     end
    
  end
end
