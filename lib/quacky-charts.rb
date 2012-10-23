require "quacky-charts/version"
include ActionView::Helpers::TagHelper

module QuackyCharts
  class Builder

    def pie_chart
      content_tag(:div, nil, :class => 'pie-chart')
    end

  end
end
