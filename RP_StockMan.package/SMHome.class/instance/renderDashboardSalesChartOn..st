as yet unclassified
renderDashboardSalesChartOn: html

	| chart myData1 myData2 |

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
		myData2 add: 5411;
			add: 7175;
			add: 9790;
			add: 7531;
			add: 4399;
			add: 3546;
			add: 4064;
			add: 8519;
			add: 8005;
			add: 8850; 
			add: 8000;
			add: 7409;
			yourself.		
	
	chart := html highcharts newChart.
	chart lang thousandsSep: ','.
	chart chart type: 'area'.
	chart title text: ''.
	chart yAxis max: 22000.
	chart xAxis categories: #('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'July' 'Aug' 'Sept' 'Oct' 'Nov' 'Dec').
	chart credits enabled: false.
	
	chart plotOptions area stacking: 'normal'; lineColor: '#666666'; lineWidth: 1.
	chart plotOptions area marker lineColor: '#666666'; lineWidth: 1.
	
	chart series index:0; name: 'Shop Sales 2015'; data: myData1.
	chart series index:0; name: 'Online Sales 2015'; data: myData2.
			
	html div
		"class: 'col s12';"
		style: 'height:300px; box-shadow: 0 1px 2px 1px rgba(0,0,0,.08), 0 3px 6px rgba(0,0,0,.08);';
	 	script: chart.