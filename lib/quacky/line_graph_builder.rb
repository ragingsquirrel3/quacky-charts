module Quacky
  class LineGraphBuilder
    
    @data = []

     def initialize(init_data = [])
       @data = init_data
     end
     
     # Return a content tag that can be selected by the client-side, and drawn on.
     # The data attribute of the HTML tag is @data.
     def draw
       "<div class='line-graph-container'><div class='y-axis'></div><div class='line-graph' data-chart='#{self.get_data}'></div></div>".html_safe
     end
     
     def get_data
       output = []
       
       @data.each do |event|
         output << {
           x => event[:time].to_i,
           y => event[:data]
         }
       end
       
       output.to_json
     end
    
  end
end
