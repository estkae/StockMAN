accessing
renderNoProductMessageOn: html

	html div 
		class: 'productMessage';
		with: [  
			html heading level: 1; class: 'center-align teal-text text-lighten-4'; with: 'No Items found for this Category'. 
		].