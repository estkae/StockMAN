as yet unclassified
renderContentOn: html

	| inventoryItem |
	
	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col s12';
				with: [ 
					html heading level: 3; class: 'dashboard-income-title '; 
						with: [
							html span
								style: 'border-bottom: 2px solid lightblue;';
								with: 'Category Items'.
						].	 
				]	
		].		
		
		html div
			class: 'row';
			with: [ 
				html form
					class: '';
					with: [ 
						html div 
							class: 'input-field col s5';
							with: [ 
								html textInput 
								autofocus;
								class: 'validate'.
							html label 
								with: 'SEARCH STOCKITEMS'.	  
							].
						html div 
							class: 'col s2';
							with: [
								html anchor 
									class: 'waves-effect waves-light btn-large addSTButton';  
									with: 'GO'
							] 
					] 
			].
					
		html div 
			class: 'row';
			with: [ 	
				html div 
					class: 'col s12';
					with: [
						html unorderedList 
							class: 'collapsible';
							with: [
								self myItems do: [ :each |
									inventoryItem := SMInventoryCategoryItem new.
									inventoryItem item: each.
									html render: inventoryItem.
								].								
							]
					] 
			].	
				
		"set pagination as required ..."	
		( self myItems size > 10 )
			ifTrue: [ 
					
				html div
					class: 'row';
					with: [ 
						html unorderedList 
							class: 'pagination';
							with: [ 
								html listItem  
									class: 'disabled';
									with: [ 
										html anchor 
											with: [
												html italic  
													class: 'material-icons';
													with: 'chevron_left'
											].
									].	
								html listItem  
									class: 'active';
									with: [ 
										html anchor 
											with: '1'	
									].	
								html listItem  
									class: 'waves-effect';
									with: [ 
										html anchor 
											with: '2'	
									].	
								html listItem  
									class: 'waves-effect';
									with: [ 
										html anchor 
											with: [
												html italic  
													class: 'material-icons';
													with: 'chevron_right'
											]
									].
							]					
					]
		].