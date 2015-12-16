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
													class: 'light-blue-text text-darken-4';
													url: '#allSales'; 
													with: 'All Sales'  
											].  
										html listItem 
											class: 'tab col s4';
											with: [
												html anchor 
													class: 'light-blue-text text-darken-4';
													url: '#channels';
													with: 'Channels'  
											]. 
										html listItem 
											class: 'tab col s4';
											with: [
												html anchor 
													class: 'light-blue-text text-darken-4';
													url: '#categories';
													with: 'Categories'  
											]. 
									]  
							].
						
						html break.
						
						html div 
							id: 'allSales';
							with: [ 
								html div
									class: 'col s7';
									with: [  
										html table 
											class: 'striped centered';
											with: [  
												html tableHead 
													with: [ 
														html tableRow 
															with: [  
																html tableHeading 
																	with: 'Category'.
																html tableHeading 
																	with: 'Units Sold - Shop / Online'.
																html tableHeading 
																	with: 'Units in Stock'.
																html tableHeading 
																	with: 'Revenue'.
																html tableHeading 
																	with: '% Last Yr'				
															] 
													].
												html tableBody 
													with: [
														html tableRow 
															with: [ 
																html tableData 
																	style: 'font-weight: 600';
																	with: 'Accessories'.
																html tableData 
																	with: '923 / 310'.
																html tableData 
																	with: '121'.
																html tableData 
																	with: '6,231'.
																html tableData 
																	with: '+ 14%'.				 
															].  
														html tableRow 
															with: [ 
																html tableData 
																	style: 'font-weight: 600';
																	with: 'Clothing'.
																html tableData 
																	with: '1,233'.
																html tableData 
																	with: '121'.
																html tableData 
																	with: '6,231'.
																html tableData 
																	with: '+ 14%'.				 
															].  
														html tableRow 
															with: [ 
																html tableData 
																	style: 'font-weight: 600';
																	with: 'Glasses'.
																html tableData 
																	with: '1,233'.
																html tableData 
																	with: '121'.
																html tableData 
																	with: '6,231'.
																html tableData 
																	with: '+ 14%'.				 
															].  
														html tableRow 
															with: [ 
																html tableData 
																	style: 'font-weight: 600';
																	with: 'Lights'.
																html tableData 
																	with: '1,233'.
																html tableData 
																	with: '121'.
																html tableData 
															with: '6,231'.
																html tableData 
																	with: '+ 14%'.				 
															].  
														html tableRow 
															with: [ 
																html tableData 
																	style: 'font-weight: 600';
																	with: 'Tyres'.
																html tableData 
																	with: '1,233'.
																html tableData 
																	with: '121'.
																html tableData 
																	with: '6,231'.
																html tableData 
																	with: '+ 14%'.				 
															].  
														html tableRow 
															with: [ 
																html tableData 
																	style: 'font-weight: 600';
																	with: 'Wheels'.
																html tableData 
																	with: '1,233'.
																html tableData 
																	with: '121'.
																html tableData 
																	with: '6,231'.
																html tableData 
																	with: '+ 14%'.				 
															]. 
													]
											].
									].	
								html div
									class: 'col s5';
									with: [ self renderDashboardProductsChartOn: html ]. 		
							].
						 	
							
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