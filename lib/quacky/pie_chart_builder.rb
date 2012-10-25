module Quacky
  
  class PieChartBuilder
    
    @data = []
    
    def initialize(init_data = [])
      @data = init_data
    end
    
    # Return a content tag that can be selected by the client-side, and drawn on.
    # The data attribute of the HTML tag is @data.
    def draw
      "<div class='pie-chart' data=#{@data.to_json}></div>".html_safe
    end
    
    # Add data.  If input is a hash, add it in.  Otherwise (it's an array, most likely),
    # set @data to input.
    def add_data(input)
      if input.class == Hash
        @data << input
      else
        @data = input
      end
    end
    
    def clear_data
      @data = []
    end
    
    def get_data
      @data
    end
  
  end
  
end
