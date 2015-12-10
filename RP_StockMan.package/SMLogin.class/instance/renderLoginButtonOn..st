accessing
renderLoginButtonOn: html

	html div
		class: 'input-group';
		with: [ 
			html button 
				class: 'btn-large btn-primary';
				callback: [
					self validateLogin 
				 ];
				with: [
					html span
						class: 'input-group-add-on';
						with: [
							html span
								class: 'glyphicon glyphicon-play'										  
						].
					html span  
						with: '  Log In'.
				]
		].	
					
						 
