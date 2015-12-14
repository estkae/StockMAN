as yet unclassified
renderContentOn: html

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
											class: 'dashboard-income-title center-align';
											with: [ 
												html span 
													class: 'border-under';
													with: 'Business Income'. 
											].
										html definitionData 
											class: 'dashboard-income-figure center-align';
											with: '49,123'.
										html definitionData 
											class: 'dashboard-income-percent center-align';
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
											class: 'dashboard-income-title center-align';
											with: [ 
												html span 
													class: 'border-under';
													with: 'Shop Income'. 
											].
										html definitionData 
											class: 'dashboard-income-figure center-align';
											with: '29,122'.
										html definitionData 
											class: 'dashboard-income-percent center-align';
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
											class: 'dashboard-income-title center-align';
											with: [ 
												html span 
													class: 'border-under';
													with: 'Online Income'. 
											].
										html definitionData 
											class: 'dashboard-income-figure center-align';
											with: '20,001'.
										html definitionData 
											class: 'dashboard-income-percent center-align';
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
							class: 'col s4';
							with: [ self renderDashboardSalesChartOn: html ].
						html div 
							class: 'col s4';
							with: [ self renderDashboardSalesChartOn: html ].	  
						html div 
							class: 'col s4';
							with: [ self renderDashboardSalesChartOn: html ].	  		
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
							class: 'col s12';
							with: [
								html unorderedList 
									class: 'tabs z-depth-1';
									with: [
										html listItem 
											class: 'tab col s4';
											with: [
												html anchor
													class: 'teal-text text-lighten-2';
													url: '#allSales'; 
													with: 'All Sales'  
											].  
										html listItem 
											class: 'tab col s4';
											with: [
												html anchor 
													class: 'teal-text text-lighten-2';
													url: '#channels';
													with: 'Channels'  
											]. 
										html listItem 
											class: 'tab col s4';
											with: [
												html anchor 
													class: 'teal-text text-lighten-2';
													url: '#categories';
													with: 'Categories'  
											]. 
									]  
							].
						html div 
							id: 'allSales';
							class: 'col s12';
							with: 'All Sales'.
						html div 
							id: 'channels';
							class: 'col s12';
							with: 'Channels'.
						html div 
							id: 'categories';
							class: 'col s12';
							with: 'Categories'.	
					].

 
 
			].	
		
	html document addLoadScript: ( ( JSStream on: '$(''ul.tabs'').tabs()' ) ).