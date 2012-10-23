// based on the example at https://github.com/mbostock/d3/blob/master/examples/donut/donut.html
$(document).ready(function() {
	// the number of slices
	var slices = 5;

	var width = 400,
	    height = 400,
	    outerRadius = Math.min(width, height) / 2,
	    innerRadius = 0,
	    n = slices,
	    q = 0,
	    data0 = d3.range(n).map(Math.random),
	    data1 = d3.range(n).map(Math.random),
	    data,
	    color = d3.scale.category20(),
	    arc = d3.svg.arc(),
	    donut = d3.layout.pie().sort(null);

	var vis = d3.select(".pie-chart")
	  .append("svg")
	    .attr("width", width)
	    .attr("height", height);

	vis.selectAll("g.arc")
	    .data(arcs(data0, data1))
	  .enter().append("g")
	    .attr("class", "arc")
	    .attr("transform", "translate(" + outerRadius + "," + outerRadius + ")")
	  .append("path")
	    .attr("fill", function(d, i) { return color(i); })
	    .attr("d", arc);


	function arcs(data0, data1) {
	  var arcs0 = donut(data0),
	      arcs1 = donut(data1),
	      i = -1,
	      arc;
	  while (++i < n) {
	    arc = arcs0[i];
	    arc.innerRadius = innerRadius;
	    arc.outerRadius = outerRadius;
	    arc.next = arcs1[i];
	  }
	  return arcs0;
	}
});
