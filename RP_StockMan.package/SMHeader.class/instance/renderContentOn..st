as yet unclassified
renderContentOn: html

	html div 
		class: 'menu-marker';
		with: [
			html anchor 
				id: 'showLeft';
				class: 'menu';
				script: (
					( html jQuery this )
					on: 'click'
					do: (
						( ( html jQuery id: 'cbp-spmenu-s1' ) addClass: 'cbp-spmenu-open' )
					)
				);
				with: [ 
					html span 
						class: 'fa fa-bars fa-5x'
				].		 
		].

	html div 
		class: 'logout-marker';
		with: [  
			html anchor
			callback: [ self session doLogout. ];
			with: [ 
				html span 
					class: 'border-under';	
					with: 'Logout'
			]		
		].	
		
	html div 
		class: 'row cd-main';
		with: [
			html section 
				class: 'cd-section col s12';
				with: [  
					html heading level: 1; 
						class: 'heading-main center-align';	 
						style: 'font-family:Lobster;color:black;';
						with: 'StockMAN'.
				]  
		].	