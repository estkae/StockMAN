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
				class: 'cd-section col s4 offset-s4';
				with: [  
					html heading level: 1; 
						class: 'heading-main';	 
						with: 'StockMAN'.
				]  
		].	

	"home - initial dashboard page"			
	html div 
		class: 'row dashboard-header';
		with: [  
			html div 
				class: 'container';
				with: [
					html div 
						class: 'col s4';
						with: [  
							html definitionList 
								with: [ 
									html definitionTerm 
										class: 'dashboard-income-title';
										with: [ 
											html span 
												class: 'border-under';
												with: 'Business Income'. 
										].
									html definitionData 
										class: 'dashboard-income-figure';
										with: '49,123'.
									html definitionData 
										class: 'dashboard-income-percent';
										with: [
											html span
												with: '12%'.
											html span	
												class: 'dashboard-income-arrow-up fa fa-arrow-up'  
										].			
							]
						].
					html div 
						class: 'col s4';	
						with: [  
							html definitionList 
								with: [ 
									html definitionTerm 
										class: 'dashboard-income-title';
										with: [ 
											html span 
												class: 'border-under';
												with: 'Shop Income'. 
										].
									html definitionData 
										class: 'dashboard-income-figure';
										with: '29,122'.
									html definitionData 
										class: 'dashboard-income-percent';
										with: [
											html span
												with: '16%'.
											html span	
												class: 'dashboard-income-arrow-up fa fa-arrow-up'  
										]
								]				
						].	
					html div 
						class: 'col s4';
						with: [  
							html definitionList 
								with: [ 
									html definitionTerm 
										class: 'dashboard-income-title';
										with: [ 
											html span 
												class: 'border-under';
												with: 'Online Income'. 
										].
									html definitionData 
										class: 'dashboard-income-figure';
										with: '20,001'.
									html definitionData 
										class: 'dashboard-income-percent';
										with: [
											html span
												with: '2%'.
											html span	
												class: 'dashboard-income-arrow-down fa fa-arrow-down'  
										]
								]
						].	  				  
				]
		].	
		
	html div 
		class: 'row';
		with: [
			html div 
				class: 'container';
				with: [ 
					html div 
						class: 'col s12';
						with: [
							html horizontalRule.   
						].	 
				]
		].

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'container';
				with: [
					html div 
						class: 'col s6 dashboard-other-title';
						with: [  
							html span 
								class: 'border-under';
								with: 'Best Sellers'.
						].
					html div 
						class: 'col s6 dashboard-other-title';
						with: [  
							html span 
								class: 'border-under';
								with: 'Sales'.
						]. 
				] 
		].		
	
	html div 
		class: 'row';
		with: [
			html div 
				class: 'container';
				with: [
					html div
						class: 'col s6';
						with: [ self renderDashboardProductsChartOn: html ].
					html div 
						class: 'col s6';
						with: [ self renderDashboardSalesChartOn: html ].	  
				]  
		].		

	html navigation
		id: 'cbp-spmenu-s1';
		class: 'cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left';
		with: [
			html div 
				class: 'menu-header-holder';
				with: [
					html button 
						id: 'closeLeft';
						class: 'menu-header';  
						script: (
							( html jQuery this )
							on: 'click'
							do: (
								( ( html jQuery id: 'cbp-spmenu-s1' ) removeClass: 'cbp-spmenu-open' )
							)
						);
						with: [
							html span
								class: 'menu-header-outline';
								with: [
									html span 
										class: 'fa fa-times fa-5x'  
								]  
						]
				].
			
			html anchor 
				class: 'selected';
				"script: (
					( html jQuery this )
					on: 'click'
					do: ( self call: render )
				);"
				with: 'Home'.
			html anchor 
				with: 'Inventory'. 
			html anchor 
				with: 'Orders'. 
			html anchor 
				with: 'Suppliers'. 
			html anchor 
				with: 'Promotions'. 	
			html anchor 
				with: 'Reports'.
			html anchor 
				with: 'Admin'.			
		].
	
	html div 
		script: ( 
		(html jQuery this load
			html: [ :canvas | canvas render: '' ];
			interval: 30000) );
      	with: ''