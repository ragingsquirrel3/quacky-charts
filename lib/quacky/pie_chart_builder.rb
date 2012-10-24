module Quacky
  
  class PieChartBuilder
    
    def initialize
      @data = {}
    end
    
    # return a content tag that can be selected by the client-side, and drawn on
    def draw
      "<div class='pie-chart'>".html_safe
    end
    
    def data
      @data
    end
  
  end
  
end
