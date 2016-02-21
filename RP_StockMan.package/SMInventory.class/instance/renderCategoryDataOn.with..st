accessing
renderCategoryDataOn: html with: myCategory

	html div 
		class: 'row addStockItem';
		with: [ 
			html break.
			html div 
				class: 'col s12';
				with: [ 
					html anchor 
						class: 'waves-effect waves-light btn-large addSTButton';
						onClick: ( ( html jQuery ajax )
							script: [ :s | 															
								s << ( ( s jQuery class: #'categoryBlock' ) load html: [ :r | self renderAddStockItemOn: r ] ).
								s << ( ( s jQuery class: #'addSTButton' ) addClass: 'disabled' ).
							] );
						with: 'Add a new StockItem'. 
				].
		].
		 
		html div
			class: 'row'; 
			with: [				
				html div 
					class: 'col s4 offset-s4';
					with: [
						html horizontalRule   
					].
			].
		
		html div 
			class: 'categoryBlock';
			with: [ self renderCategoryItemsOn: html ]. 		