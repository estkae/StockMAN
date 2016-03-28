as yet unclassified
renderCategorySummaryChartOn: html for: myCategory

	| chart mySummaryData myData1 myData2 yAxis1 yAxis2 myYaxis |

	mySummaryData := self findCategorySalesSummaryDataFor: myCategory.

	myData1 := OrderedCollection new.
		myData1 add: mySummaryData sales_13;
			add: mySummaryData sales_14;
			add: mySummaryData sales_15;
			add: mySummaryData sales_16;
			add: mySummaryData sales_17;
			add: mySummaryData sales_18;
			add: mySummaryData sales_19;
			add: mySummaryData sales_20;
			add: mySummaryData sales_21;
			add: mySummaryData sales_22; 
			add: mySummaryData sales_23;
			add: mySummaryData sales_24;
			yourself.

	myData2 := OrderedCollection new.
		myData2 add: mySummaryData volume13;
			add: mySummaryData volume14;
			add: mySummaryData volume15;
			add: mySummaryData volume16;
			add: mySummaryData volume17;
			add: mySummaryData volume18;
			add: mySummaryData volume19;
			add: mySummaryData volume20;
			add: mySummaryData volume21;
			add: mySummaryData volume22; 
			add: mySummaryData volume23;
			add: mySummaryData volume24;
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
	
	chart series index:0; name: myCategory, ' Volume'; data: myData2; type: 'column'; yAxis: 1.
	chart series index:0; name: myCategory, ' Sales'; data: myData1; type: 'spline'; color: '#808080'.
			
	html div
		style: 'height:300px;box-shadow: 0 1px 2px 1px rgba(0,0,0,.08), 0 3px 6px rgba(0,0,0,.08);';
	 	script: chart.