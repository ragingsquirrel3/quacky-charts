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
	    width: 580
	    height: 250
	    renderer: 'line'
	    series: [{ color: 'steelblue', data: data }]
	  )
	  y_axis = new Rickshaw.Graph.Axis.Y(
	    graph: graph
	    orientation: 'left'
	    tickFormat: Rickshaw.Fixtures.Number.formatKMBT
	    element: document.getElementById('y-axis')
	  )
	  graph.render()