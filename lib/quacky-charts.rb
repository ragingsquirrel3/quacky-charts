require "quacky/version"
require "quacky/pie_chart_builder"

include ActionView::Helpers::TagHelper

module Quacky
  
  # return a content tag that can be selected by the client-side, and drawn on
  def draw
    content_tag(:div, nil, :class => 'pie-chart')
  end
  
end
