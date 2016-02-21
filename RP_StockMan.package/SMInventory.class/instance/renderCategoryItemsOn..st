as yet unclassified
renderCategoryItemsOn: html

	| myCategoryItems |
		
	myCategoryItems := SMInventoryCategoryItems new.
	myCategoryItems myItems: ( self findItems: self category ).
	myCategoryItems myCategory: self category.		
	html render: myCategoryItems.		
				
	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col s12';
				with: [ 
					html heading level: 3; class: 'dashboard-income-title '; with: [
						html span
							style: 'border-bottom: 2px solid lightblue;';
							with: 'Category Sales'.
					].	 
				]	
		].	
					
	html div 
		class: 'row';
		with: [
			html div
				class: 'col s12';
				with: [ self renderCategorySalesChartOn: html ].  	
		].	
	
	html document addLoadScript: ( ( JSStream on: '$(''.collapsible'').collapsible({ accordian: true })' ) ).