module Quacky
  
  class PieChartBuilder
    
    # return a content tag that can be selected by the client-side, and drawn on
    def draw
      "<div class='pie-chart'>".html_safe
    end
  
  end
  
end
