$(document).ready( ->
	builder = new PieChartBuilder
	builder.drawCharts()
)

# Draws D3 pie charts on all the elements with class "pie-chart."
class PieChartBuilder
	
	# Grabs all the elements with class "pie-chart," and draws the chart.
	drawCharts: ->
		allCharts = $(".pie-chart")
		@appendChart chart for chart in allCharts
	
	# Takes a container, draws a chart based on data attribute.
	# If no init data, draws from dummy data.
	appendChart: (container) ->
		
		w = $(container).width()
		h = w
		r = w / 2
		color = d3.scale.category20c()
		
		# If there is data in the container's data attribute, set it.
		# Else, use some dummy data.
		init_data = $(container).data()["chart"]
		if init_data.length == 0
			data = [{"label":"Category A", "value":20}, 
		          {"label":"Category B", "value":50}, 
		          {"label":"Category C", "value":30}]
		else
			data = init_data
		
		# fancy D3 stuff ...
		vis = d3.select(container).append("svg:svg").data([data]).attr("width", w).attr("height", h).append("svg:g").attr("transform", "translate(" + r + "," + r + ")")
		arc = d3.svg.arc().outerRadius(r)
		
		pie = d3.layout.pie().value( (d) ->
			return d.value
		)
		arcs = vis.selectAll("g.slice").data(pie).enter().append("svg:g").attr("class", "slice")
		arcs.append("svg:path").attr("fill", (d, i) ->
			return color(i)
		).attr("d", arc)
		
		arcs.append("svg:text").attr("transform", (d) ->
			d.innerRadius = 0
			d.outerRadius = r
			return "translate(" + arc.centroid(d) + ")"
		).attr("text-anchor", "middle").text( (d, i) ->
			return data[i].label
		)
