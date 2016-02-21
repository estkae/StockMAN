initialization
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet	
		"url: 'https://fonts.googleapis.com/css?family=Open+Sans:400,300,600|Monda'."		
		url: 'https://fonts.googleapis.com/css?family=Lobster'.			
	anHtmlRoot stylesheet
		url: 'http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'.		
	anHtmlRoot stylesheet
		url: 'https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css'.	
	anHtmlRoot stylesheet
		url: 'https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js'.											