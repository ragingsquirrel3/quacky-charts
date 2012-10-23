module Quacky
  class PieChartBuilder
    
    # return a content tag that can be selected by the client-side, and drawn on
    def draw
      content_tag(:div, nil, :class => 'pie-chart')
    end
  
  end
end
