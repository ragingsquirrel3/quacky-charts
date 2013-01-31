$(document).ready( ->
	builder = new LineGraphBuilder
	builder.drawGraphs()
)

# Draws D3 pie charts on all the elements with class "pie-chart."
class LineGraphBuilder
  
  # Grabs all the elements with class "pie-chart," and draws the chart.
	drawGraphs: ->
		allGraphs = $('.line-graph')
		@appendGraph graph for graph in allGraphs
  
	appendGraph: (container) ->
		data = $(container).data()['chart']
		graph = new Rickshaw.Graph(
			element: $(container)[0]
			renderer: 'line'
			series: [{ color: 'steelblue', data: data }]
		)
		
		x_axis = new Rickshaw.Graph.Axis.Time( { graph: graph } )
		
		y_axis = new Rickshaw.Graph.Axis.Y(
			graph: graph
			orientation: 'left'
			tickFormat: Rickshaw.Fixtures.Number.formatKMBT
			element: $('.y-axis')[0]
		)
		
		graph.render()
