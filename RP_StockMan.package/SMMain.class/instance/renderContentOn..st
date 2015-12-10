as yet unclassified
renderContentOn: html
	
	"header line"
	html div 
		class: 'header';
		with: [ html render: self myHeader ].

	"home - initial dashboard page"	
	html div 
		id: 'main';
		with: [ 			
			html div 
				with: [ 
					html render: self myHomePage.  
				].
		].

	"navigation stuff"
	html div 
		class: 'navigation';
		with: [ html render: self myNavigation ].
		
	html div 
		script: ( 
		(html jQuery this load
			html: [ :canvas | canvas render: '' ];
			interval: 30000) );
      	with: ''