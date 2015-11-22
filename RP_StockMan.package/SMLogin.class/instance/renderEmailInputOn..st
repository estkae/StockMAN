accessing
renderEmailInputOn: html

	html div 
		class: 'input-group';
		with: [
			html span 
				class: 'input-group-addon';
				with: [
					html span 
						class: 'glyphicon';
						class: 'glyphicon-user'  
				].
			html textInput
				class: 'form-control'; 
				autofocus;
				attributeAt: 'type' put: 'email';
				attributeAt: 'placeholder' put: 'johndoe@acme.com';
				attributeAt: 'autocomplete' put: 'off';
				on: #email of: self.
		].