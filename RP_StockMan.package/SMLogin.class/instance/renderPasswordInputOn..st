accessing
renderPasswordInputOn: html

	html div 
		class: 'input-group';
		with: [
			html span 
				class: 'input-group-addon';
				with: [
					html span 
						class: 'glyphicon';
						class: 'glyphicon-lock'  
				].
			html passwordInput
				class: 'form-control'; 
				autofocus;
				attributeAt: 'placeholder' put: 'password';
				attributeAt: 'autocomplete' put: 'off';
				on: #password of: self.
		].