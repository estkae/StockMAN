accessing
renderForgottenPasswordLinkOn: html

	html paragraph  
		with: [
			html anchor 
				class: 'password-reset';
				with: 'Forgotton your password ?'.
		].