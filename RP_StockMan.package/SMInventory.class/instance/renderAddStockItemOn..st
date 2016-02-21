accessing
renderAddStockItemOn: html

	html div
		class: 'row'; 
		with: [				
			html form 
				class: 'col s12';
				with: [
					html div
						class: 'row';
						with: [
							html heading level: 3; 
								class: 'dashboard-income-title '; 
								with: [
									html span
										style: 'border-bottom: 2px solid lightblue;';
										with: 'Enter StockItem Details'.
								]
						].
					html div 
						class: 'row'; 
						with: [ 
							html div 
								class: 'input-field col s6';
								with: [
									html textInput 
										autofocus;
										class: 'validate'.
									html label 
										with: 'NAME'.	  
								]							
						].
					html div 
						class: 'row'; 
						with: [
							html div 
								class: 'input-field col s10';
								with: [
									html textArea 
										class: 'validate materialize-textarea'.
									html label 
										with: 'DESCRIPTION'.	  
								]
						].	 
					html div 
						class: 'row'; 
						with: [
							html div 
								class: 'input-field col s4';
								with: [
									html textInput 
										class: 'validate'.
									html label 
										with: 'COST PRICE'.	  
								].
							html div 
								class: 'input-field col s4';
								with: [
									html textInput 
										class: 'validate'.
									html label 
										with: 'SELL PRICE'.	  
								].
						].
					html div 
						class: 'row';
						with: [ 
							html div 
								class: 'col s6';
								with: [
									html div 
										with: [ 
											html label 
												with: 'SUPPLIER'.
											html select 
												class: 'validate';
												size: 6;
												list: self categories;
												selected: ( self categories at: 1 );
												callback: [ 	:value | self category: value asString ].																					
										].			
								].
							html div 
								class: 'col s6';
								with: [
									html div 
										with: [ 
											html label 
												with: 'VAT CODE'.
											html select 
												class: 'validate';
												size: 6;
												list: self vatrates;
												selected: ( self vatrates at: 1 );
												callback: [ 	:value | self vatrates value asString ].																					
										].			
								]  
						].
					html div 
						class: 'row'.
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
												"do some smalltalk stuff to validate and store the data"												
												s << ( ( s jQuery class: #'categoryBlock' ) load html: [ :r | self renderCategoryItemsOn: r ] ).
												s << ( ( s jQuery class: #'addSTButton' ) removeClass: 'disabled' ).
											]	
										);
										with: 'Save'.
									html anchor 
										class: 'waves-effect waves-light btn-large red';
										style: 'margin-left:10px;';
										onClick: ( ( html jQuery ajax )
											script: [ :s | 															
												s << ( ( s jQuery class: #'categoryBlock' ) load html: [ :r | self renderCategoryItemsOn: r ] ).
												s << ( ( s jQuery class: #'addSTButton' ) removeClass: 'disabled' ).
										] );
										with: 'Cancel'.
								]		   
						].			  
				].
		].
	
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select()' ) ).	