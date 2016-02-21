as yet unclassified
renderContentOn: html

	html definitionList 
		style: 'display:inline-block;margin-top:0;margin-left:0;margin-right:0;margin-bottom:15px;vertical-align:top;';
		with: [ 
			html definitionTerm 
				class: '';
				with: [
					html span 
						style: 'font-size: 24px;font-weight:400;border-bottom: 2px solid lightblue;text-transform:uppercase;';
						with: self category.
					html break.	
					html span 
						style: 'color:gray;';
						with: '(YTD - Pounds)'	  
				].
				html definitionData 
					class: '';
					style: 'color:#454447;font-size: 72px;font-weight:300;letter-spacing:-2px;line-height:1em;margin-left:0px;margin-top:15px;';
					with: self sales_revenue asStringWithCommas. 
		].
	html div 
		style: 'display:inline-block;margin-left:37px;';
		with: [
			html div											
				with: [
					html span 
						style: 'font-size: 24px;font-weight:400;border-bottom: 2px solid lightblue;';
						with: 'Breakdown'.  
				].
			html definitionList 
				style: 'display:inline-block;margin-right:20px;vertical-align:top;width:120px;';
				with: [
					html definitionTerm 
						style: 'text-transform: uppercase;margin-top:15px;';
							with: [
								html span 
									style: 'border-bottom: 1px solid lightblue;';
									with: 'Sales Volume'
							].
					html definitionData 
						style: 'color:#454447;font-size: 42px;font-weight:300;letter-spacing:-2px;line-height:1em;margin-left:0px;margin-top:15px;';
						with: self volume asStringWithCommas. 
				].  
			html definitionList 
				style: 'display:inline-block;margin-right:20px;vertical-align:top;width:120px;';
				with: [
					html definitionTerm 
						style: 'text-transform: uppercase;margin-top:15px;';
						with: [
							html span 
								style: 'border-bottom: 1px solid lightblue;';
								with: 'Target (YTD)'
						].
					html definitionData 
						style: 'color:#454447;font-size: 42px;font-weight:300;letter-spacing:-2px;line-height:1em;margin-left:0px;margin-top:15px;';
						with: self target_volume asStringWithCommas. 
				]. 
			html definitionList 
				style: 'display:inline-block;margin-right:20px;vertical-align:top;width:120px;';
				with: [
					html definitionTerm 
						style: 'text-transform: uppercase;margin-top:15px;';
						with: [
							html span 
								style: 'border-bottom: 1px solid lightblue;';
								with: 'Margin'.
						].
					html definitionData 
						style: 'color:#454447;font-size: 42px;font-weight:300;letter-spacing:-2px;line-height:1em;margin-left:0px;margin-top:15px;';
						with: self margin asStringWithCommas. 
				]. 
			html definitionList 
				style: 'display:inline-block;margin-right:20px;vertical-align:top;width:200px;';
				with: [
					html definitionTerm 
						style: 'text-transform: uppercase;margin-top:15px;';
						with: [
							html span 
								style: 'border-bottom: 1px solid lightblue;';
								with: 'Outstanding Orders'
						].
					html definitionData 
						style: 'color:#454447;font-size: 42px;font-weight:300;letter-spacing:-2px;line-height:1em;margin-left:0px;margin-top:15px;';
						with: self orders_outstanding asStringWithCommas. 
				]. 
			html definitionList 
				style: 'display:inline-block;margin-right:20px;vertical-align:top;width:200px;';
				with: [
					html definitionTerm 
						style: 'text-transform: uppercase;margin-top:15px;';
						with: [
							html span 
								style: 'border-bottom: 1px solid lightblue;';
								with: 'Active Promotions'
						].
					html definitionData 
						style: 'color:#454447;font-size: 42px;font-weight:300;letter-spacing:-2px;line-height:1em;margin-left:0px;margin-top:15px;';
						with: self promotions_active asStringWithCommas. 
				]. 
		].
	
		html div 
			class: 'row';
			with: [ 
				html div 
					class: 'col s12';
					with: [ 
						html anchor 
							class: 'waves-effect waves-light btn-large showSummaryChartButton';
							class: 'summary', self category;
							style: 'font-size:22px;text-decoration:none;cursor:pointer;color:black;';
							onClick: ( ( html jQuery this )
								script: [ :s | 
									s << ( ( html jQuery class: 'summaryChart' ) hide: 0.3 second ).
									s << ( ( html jQuery class: 'closeSummaryChart' ) hide ).
									s << ( ( ( ( html jQuery this ) closest: '.row' ) next: '.row'  ) show: 0.4 second ).
									s << ( ( html jQuery class: 'showSummaryChartButton' ) removeClass: 'disabled' ).
									s << ( ( html jQuery class: 'summary', self category ) addClass: 'disabled' ).
									s << ( ( html jQuery class: 'closeSummaryChart', self category ) show ).
							] );
							with: 'Summary Charts'.	
						html anchor 
							class: 'closeSummaryChart';
							class: 'closeSummaryChart', self category;
							style: 'display:none;margin-left:15px;font-size:18px;text-decoration:none;cursor:pointer;color:black;';
							onClick: ( ( html jQuery this )
								script: [ :s | 
									s << ( ( html jQuery class: 'summaryChart' ) hide: 0.3 second ).		
									s << ( ( html jQuery class: 'showSummaryChartButton' ) removeClass: 'disabled' ).
									s << ( ( html jQuery class: 'closeSummaryChart', self category ) hide ).									
							] );
							with: '( Close )'.								
					].	 
			].
	
		html div 
			class: 'row summaryChart';
			class: 'col s10';
			with: [ self renderCategorySummaryChartOn: html for: self category ].			
	
	html div
		class: 'row'; 
		with: [				
			html div 
				class: 'col s4 offset-s4';
				with: [
					html horizontalRule   
				].
		]. 