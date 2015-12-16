rendering
renderContentOn: html
		
	html div 
		class: 'row';
			with: [  
				html div 
					class: 'container';
					with: [
						html div 
							class: 'col s4';
							with: [ 
								html form 
									with: [
										html div
											class: 'row';
											with: [
												html div 
													class: 'input-field col s12';											
													with: [  
														html select 
															with: [  
																html option
																	value: '';
																	attributeAt: 'disabled' put: 'disabled';
																	attributeAt: 'selected' put: 'selected';
																	with: 'Choose Category'.
																html option 
																	value: 'Accessories';
																	with: 'Accessories'.
																html option 
																	value: 'Clothing';
																	with: 'Clothing'.
																html option 
																	value: 'Glasses';
																	with: 'Glasses'.	
																html option 
																	value: 'Lights';
																	with: 'Lights'.
																html option 
																	value: 'Tyres';
																	with: 'Tyres'.
																html option 
																	value: 'Wheels';
																	with: 'Wheels'.		
															].
														html label 
															with: 'Select Category'.
													].
											].	
										html div
											class: 'row';
											with: [ 
												html div  
													class: 'input-field col s12';
													with: [
														html textInput 
															class: 'validate';
  															id: 'productName';
															on: #productName of: self.
														html label 	
															with: 'Product Name'.	
														
													].		
											].
										html div 
											class: 'row';
											with: [
												html anchor 
													class: 'waves-effect waves-light btn-large';
													with: 'Process'   
											]
									].											
							].
						html div 
							class: 'col s8'.
					]
			].
	
	html div
		class: 'container';
		with: [ 	
			html horizontalRule
		].	
		
	html div 
		class: 'container';
		with: [
			html div 
				class: 'row';
				with: [ 
					html div 
						class: 'col s12 productInfo';
						with: [ 
							html span
								class: 'center-align';  
								with: [  
									html heading level: 2; class: 'center-align teal-text text-lighten-4'; with: 'Category / Product data'. 
								].	
						]		
				]  
		].	 		

		html document addLoadScript: ( ( JSStream on: '$(''select'').material_select()' ) ).	
		