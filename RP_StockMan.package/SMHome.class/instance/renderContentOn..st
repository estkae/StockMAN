as yet unclassified
renderContentOn: html

	| categoryData categorySummary |
	
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
											with: '185,152'.
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
											with: '102,453'.
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
											with: '82,699'.
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
								html heading level: 3; 
									class: 'dashboard-income-title '; 
									with: [
										html span
											style: 'border-bottom: 2px solid lightblue;';
											with: 'Category Sales'.
									]		
							].	 
					]	
			].

		categoryData := self findCategorySummary.
		categoryData do: [ :each |
			categorySummary := SMHomeCategorySummary new.
			categorySummary 
				category: each category; 
				sales_revenue: each sales_revenue;
				volume: each volume;
				target_volume: each target_volume;
				margin: each margin; 
				orders_outstanding: each orders_outstanding;
				promotions_active: each promotions_active.
			self renderCategorySummaryDataOn: html with: categorySummary.
		].
	
	"hack to ensure that the charts are rendered at the correct size !!!"
	html document addLoadScript: ( ( JSStream on: '$(''.summaryChart'').hide()' ) ).