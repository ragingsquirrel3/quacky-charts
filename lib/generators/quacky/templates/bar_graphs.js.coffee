$(document).ready( ->
	builder = new BarGraphBuilder
	builder.drawCharts()
)

# Draws a Rickshaw bar graph on any element with class "bar-graph"
class BarGraphBuilder
	
	# Grabs all the elements with class "bar-graph," and draws the graph.
	drawCharts: ->
		allCharts = $(".bar-graph")
		@appendChart chart for chart in allCharts
	
	# Takes a container, draws a chart based on data attribute.
	# If no init data, draws from dummy data.
	appendChart: (container) ->
		console.debug "let's sray"
		
		graph = new Rickshaw.Graph(
			element: document.querySelector(".bar-graph")
			renderer: 'bar'
			series: [{
				data: [ { x: 0, y: 40 }, { x: 1, y: 49 }, { x: 2, y: 12 }, { x: 3, y: 81 } ]
				color: 'steelblue'
			}]
		)
		graph.render();
