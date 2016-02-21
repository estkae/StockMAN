as yet unclassified
renderCategorySummaryChartOn: html for: myCategory

	| chart myData1 myData2 yAxis1 yAxis2 myYaxis |

	myData1 := OrderedCollection new.
		myData1 add: 8722;
			add: 10013;
			add: 11211;
			add: 5231;
			add: 8723;
			add: 5456;
			add: 8701;
			add: 10692;
			add: 10993;
			add: 8022; 
			add: 6998;
			add: 7691;
			yourself.

	myData2 := OrderedCollection new.
		myData2 add: 8722;
			add: 10013;
			add: 11211;
			add: 5231;
			add: 8723;
			add: 5456;
			add: 8701;
			add: 10692;
			add: 10993;
			add: 8022; 
			add: 6998;
			add: 7691;
			yourself.

	"set yaxis objects"	
	myYaxis := OrderedCollection new.
	yAxis1 := HighchartsYAxis new.
	yAxis1 title text: 'Volume'.
	yAxis2 := HighchartsYAxis new.
	yAxis2 title text: 'Sales'.
	yAxis2 opposite: true.
	myYaxis add: yAxis1; add: yAxis2.	
	
	chart := html highcharts newChart.
	chart lang thousandsSep: ','.
	chart title text: ''.
	chart tooltip shared: true.

	chart yAxis: myYaxis.
	
	chart xAxis categories: #('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'July' 'Aug' 'Sept' 'Oct' 'Nov' 'Dec').
	chart xAxis crosshair: true. 
	
	chart credits enabled: false.

	chart plotOptions column color: '#2b8abe'.
	
	chart series index:0; name: myCategory, ' Volume'; data: myData1; type: 'column'; yAxis: 1.
	chart series index:0; name: myCategory, ' Sales'; data: myData1; type: 'spline'; color: '#808080'.
			
	html div
		style: 'height:300px;box-shadow: 0 1px 2px 1px rgba(0,0,0,.08), 0 3px 6px rgba(0,0,0,.08);';
	 	script: chart.