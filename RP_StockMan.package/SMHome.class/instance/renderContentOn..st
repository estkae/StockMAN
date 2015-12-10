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