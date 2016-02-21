rendering
renderContentOn: html

	html div 
		class: 'row';
		with: [
		html div 
			class: 'col s4';
			class: 'offset-s4';
			with: [ 
				html div 
					class: 'panel';
					class: 'panel-default';
					class: 'login-form';
					with: [
						html div
							class: 'panel-heading';
							with: [
								html heading level: 1; 
									style: 'font-family:Lobster;';
									with: 'StockMAN'.
								html paragraph 
									with: 'Stock management the SMART way.'	  
							].
						html div 
							class: 'panel-body';
							with: [ 
								html form 
									class: 'form';
									class: 'form-horizontal';
									with: [
										html div 
											class: 'col s12';  
											with: [
												self renderEmailInputOn: html.											  
											].
										html div 
											class: 'col s12';  
											with: [
												self renderPasswordInputOn: html.											  
											].
										html div 
											class: 'col s12';  
											with: [
												self renderLoginButtonOn: html.											  
											].
										html div 
											class: 'col s12';  
											with: [
												self renderForgottenPasswordLinkOn: html.											  
											]
									].
							]    
					]
			]
		].
			