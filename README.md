## About

QuackyCharts is a graphing gem I'm working on.  It provides a Ruby syntax for initializing and configuring pie charts and line graphs with D3 and Rickshaw.

## Installation

Add this line to your application's Gemfile:

		gem 'quacky-charts'

And then execute:

 		$ bundle

Run this command to install the needed JS files:

		$ rails generate quacky:install

## Usage

Add this line to the controller:

		@chart = Quacky::PieChartBuilder.new
		
If you want to add some custom data (otherwise you'll get dummy data):

		@chart.add_data( { "label" => "Category A", "value" => 20 } )
		@chart.add_data( { "label" => "Category B", "value" => 60 } )
		
and in the view:

		<%= @chart.draw %>
		
To draw a line graph:

    example_data = [{ time: Time.now, data: 50 },{ time: Time.now + 1.hour, data: 75 },{ time: Time.now + 2.hours, data: 25 }]
    @line_graph = Quacky::LineGraphBuilder.new(example_data)
    
and in the view:

    <%= @line_graph.draw %>
		
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
