require 'rails/generators'

module Quacky
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs JS files needed for D3 pie charts"
      
      def write_helper_files
        # coffee builders
        copy_file 'pie_chart_builder.js.coffee', 'app/assets/javascripts/pie_chart_builder.js.coffee'
        copy_file 'line_graph_builder.js.coffee', 'app/assets/javascripts/line_graph_builder.js.coffee'
        
        # vendor files
        copy_file 'd3.v2.min.js', 'app/assets/javascripts/d3.v2.min.js'
        copy_file 'rickshaw.min.js', 'app/assets/javascripts/rickshaw.min.js'
        copy_file 'rickshaw.min.css', 'app/assets/stylesheets/rickshaw.min.css'
        copy_file 'line_graphs.css', 'app/assets/stylesheets/line_graphs.css'
      end
  
    end
  end    
end
