as yet unclassified
renderDashboardProductsChartOn: html

	| chart myData baseColor myColors myColor |

	myData := OrderedCollection new.
	myData add: ( Dictionary newFrom: {'name'->'Tyres'. 'y'-> 14133} ).
	myData add: ( Dictionary newFrom: {'name'->'Lights'. 'y'-> 17188} ).
	myData add: ( Dictionary newFrom: {'name'-> 'Clothing'. 'y'-> 21001. 'sliced'->'true'} ).
	myData add: ( Dictionary newFrom: {'name'-> 'Accessories'. 'y'-> 12762. } ).
	myData add: ( Dictionary newFrom: {'name'-> 'Wheels'. 'y'-> 13122. } ).
	myData add: ( Dictionary newFrom: {'name'-> 'Glasses'. 'y'-> 9002. } ).
	
	chart := html highcharts newChart.
	chart yAxis title text: 'Visits'.
	chart legend enabled: false.
	chart chart type: 'pie'.
	chart title text: 'Sales - by Product Category'.
	chart xAxis title text: 'Site'.
	chart xAxis type: 'category'.
	chart credits enabled: false.
	
	baseColor := Color lightBlue darker.
	myColors := OrderedCollection new.
	1 to: 10 do: [ :i | 
		myColor := baseColor adjustBrightness: i * -0.1.
		myColors add: myColor asHTMLColor. 
	].

	chart plotOptions pie colors: myColors.
	chart plotOptions pie dataLabels enabled: true.
	chart plotOptions pie allowPointSelect: true; cursor: 'pointer'.
	
	chart series index:0; name: 'Products'; data: myData.	
	html div script: chart			
