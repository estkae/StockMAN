as yet unclassified
renderDashboardProductsChartOn: html

	| chart myData1 myData2 |
	
	myData1 := #(1 2 3 4 5).
	myData2 := #(1 2 3 4 5).
	
	chart := html highcharts newChart.
	chart yAxis title text: 'Units sold'.
	chart legend enabled: false.
	chart chart type: 'column'.
	chart title text: ''.
	chart xAxis title text: ''.
	chart xAxis type: 'category'.
	chart xAxis categories: #('Accesories' 'Clothing' 'Glasses' 'Lights' 'Tyres' 'Wheels').
	chart credits enabled: false.
	chart plotOptions column dataLabels enabled: true.
	
	chart series index:0; name: 'Shop Sales'; data: myData1.	
	chart series index:0; name: 'Online Sales'; data: myData2.
		
	html div
		class: 'col s12';
		style: 'margin-top: 10px;';
	 	script: chart			
