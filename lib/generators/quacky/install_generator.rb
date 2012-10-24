require 'rails/generators'

module Quacky
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      desc "This gesnerator installs JS files needed for D3 pie charts"
      
      def write_js_files
        copy_file "pie_charts.js.coffee", "app/assets/javascripts/pie_charts.js.coffee"
        copy_file "d3.v2.min.js", "app/assets/javascripts/d3.v2.min.js"
      end
  
    end
  end    
end
