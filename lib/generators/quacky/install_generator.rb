require 'rails/generators'

module Quacky
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs JS files needed for D3 pie charts"
      
      def write_js_files
        # coffee builders
        copy_file 'pie_chart_builder.js.coffee', 'app/assets/javascripts/pie_chart_builder.js.coffee'
        copy_file 'line_graph_builder,js.coffee', 'app/assets/javascripts/line_graph_builder.js.coffee'
        
        # vendor js libraries
        vendor_dir = 'vendor/assets/javascripts'
        copy_file 'd3.v2.min.js', "#{vendor_dir}/d3.v2.min.js"
        copy_file 'rickshaw.min.js', "#{vendor_dir}/rickshaw.min.js"
      end
  
    end
  end    
end
