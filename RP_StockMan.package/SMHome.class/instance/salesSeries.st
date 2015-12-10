as yet unclassified
salesSeries

	| data |

	data := OrderedCollection new
		add: (ChartDatum belongingTo: (Date fromString: '01/01/2013') withValue: 1228.23);
		add: (ChartDatum belongingTo: (Date fromString: '02/01/2013') withValue: 1187.76);
		add: (ChartDatum belongingTo: (Date fromString: '03/01/2013') withValue: 1202.09);
		add: (ChartDatum belongingTo: (Date fromString: '04/01/2013') withValue: 1422.23);
		add: (ChartDatum belongingTo: (Date fromString: '05/01/2013') withValue: 1287.76);
		add: (ChartDatum belongingTo: (Date fromString: '06/01/2013') withValue: 1001.09);
		add: (ChartDatum belongingTo: (Date fromString: '07/01/2013') withValue: 1218.23);
		add: (ChartDatum belongingTo: (Date fromString: '08/01/2013') withValue: 1187.76);
		add: (ChartDatum belongingTo: (Date fromString: '09/01/2013') withValue: 1202.09);
		add: (ChartDatum belongingTo: (Date fromString: '10/01/2013') withValue: 1422.23);
		add: (ChartDatum belongingTo: (Date fromString: '11/01/2013') withValue: 1287.76);
		add: (ChartDatum belongingTo: (Date fromString: '12/01/2013') withValue: 1001.09);
		yourself.
	^ ChartSeries named: 'Monthly Sales' composedOf: data.				
