$(document).ready( ->
	builder = new PieChartBuilder
	builder.drawCharts()
)

class PieChartBuilder

	drawCharts: ->
		w = 300
		h = 300
		r = 100
		color = d3.scale.category20c()
		
		data = [{"label":"one", "value":20}, 
	          {"label":"two", "value":50}, 
	          {"label":"three", "value":30}]
	
		vis = d3.select("body").append("svg:svg").data([data]).attr("width", w).attr("height", h).append("svg:g").attr("transform", "translate(" + r + "," + r + ")")
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
