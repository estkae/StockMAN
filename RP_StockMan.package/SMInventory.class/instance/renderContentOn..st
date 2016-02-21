rendering
renderContentOn: html
	
	| myItems |	
		
	html div 
		class: 'container';
			with: [  
				html div 
					class: 'row';
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
															class: 'validate';
															size: 6;
															list: self categories;
															selected: ( self categories at: 1 );
															callback: [ 	:value | self category: value asString ].														
														html label 
															with: 'SELECT CATEGORY'.
													].
											].	

										html div 
											class: 'row';
											with: [
												html div 
													class: 'col s12';
													with: [ 
														html anchor 
															class: 'waves-effect waves-light btn-large';
															onClick: ( ( html jQuery ajax )
																serializeForm;
																script: [ :s | 															
																	myItems := self findItems: self category.	
																	( myItems isEmpty ) 
																		ifTrue: [  
																			s << (  ( s jQuery class: #'productInfo' ) load html: [ :r | self renderNoProductMessageOn: r ] )
																		]	
																		ifFalse: [
																			s << (  ( s jQuery class: #'productInfo' ) load html: [ :r | self renderCategoryDataOn: r with: self category ] ).
																		].	
																] 	
															);
															with: 'Process'
													]		   
											]
									].											
							].
						
						html div 
							class: 'col s7 offset-s1';
							with: [  
								html break.
								html div 
									with: [
										html blockquote 
											style: 'margin-left:15px;font-size: 18px;font-weight:300;'; 
											with: 'Select a Category in order to display relevant information - statistics / charts with regard to sales performance. Select a product from the list to view additional information.'  
									]
							]
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
				class: 'productInfo';
				with: [ 
					html div 
						class: 'row';
						with: [ 
							html div 
								class: 'col s12';
								with: [ 
									html span
										class: 'center-align';  
										with: [  
											html heading level: 1; class: 'center-align teal-text text-lighten-4'; with: 'Category / Product data'. 
										].	
								]		
						]
				].	  
		].	 		

		html document addLoadScript: ( ( JSStream on: '$(''select'').material_select()' ) ).	