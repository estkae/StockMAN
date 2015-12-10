as yet unclassified
renderDashboardSalesChartOn: html

	| chart myData1 myData2 |

	myData1 := OrderedCollection new.
		myData1 add: 14133;
			add: 17188;
			add: 21001;
			add: 12762;
			add: 13122;
			add: 9002;
			add: 12765;
			add: 19211;
			add: 18998;
			add: 16872; 
			add: 14998;
			add: 15100;
			yourself.
	
	myData2 := OrderedCollection new.
		myData2 add: 10133;
			add: 14188;
			add: 16001;
			add: 10762;
			add: 11122;
			add: 6002;
			add: 10452;
			add: 16521;
			add: 11542;
			add: 15012;
			add: 14213;
			add: 10992;
			yourself.
	
	chart := html highcharts newChart.
	chart lang thousandsSep: ','.
	chart yAxis title text: 'Sales'.
	chart yAxis min: 500.
	chart chart type: 'spline'.
	chart title text: 'Sales - 12 months'.
	chart xAxis title text: 'Date'.
	chart xAxis categories: #('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'July' 'Aug' 'Sept' 'Oct' 'Nov' 'Dec').
	chart xAxis crosshair: 'true'.
	chart tooltip shared: 'true'.
	chart credits enabled: false.
	
	chart plotOptions column colorByPoint: true.
	chart plotOptions column dataLabels enabled: true.
	
	chart series index:0; name: 'Sales 2015'; data: myData1.
	chart series index:0; name: 'Sales 2014'; data: myData2.
			
	html div script: chart.