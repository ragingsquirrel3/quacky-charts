## About

QuackyCharts is a graphing gem I'm working on.  The goal is to easily create charts and graphs, abstracting the JS tools used to to do.  For now, it only creates simple pie charts using D3.  The next step is to add some configuration tools.  Eventually, I'd like to add different kinds of graphs.

## Installation

Add this line to your application's Gemfile:

		gem 'quacky-charts'

And then execute:

 		$ bundle

Install the needed JS files

		$ rails generate quacky:install

## Usage

In app/assets/javascripts/application.js

		//= require d3.v2.min
		//= require pie_charts.js
		
In your controller

		@generator = QuackyCharts::Builder.new
		
In your view

		<%= @generator.pie_chart %>
		
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
