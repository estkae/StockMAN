rendering
renderContentOn: html

	|  |
		
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
											class: 'input-field col s12';											
											with: [  
												html select 
													with: [  
														html option
															value: '';
															attributeAt: 'disabled' put: 'disabled';
															attributeAt: 'selected' put: 'selected';
															with: 'Choose Department'.
														html option 
															value: 'Option 1';
															with: 'Option 1'.
														html option 
															value: 'Option 2';
															with: 'Option 2'.
														html option 
															value: 'Option 3';
															with: 'Option 3'.	
													].
												html label 
													with: 'Select Department'.
											].		
									]
							].
						html div 
							class: 'col s8'.
					]
			].	

		html document addLoadScript: ( ( JSStream on: '$(''select'').material_select()' ) ).	
		