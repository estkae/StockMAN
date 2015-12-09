rendering
renderContentOn: html

	"navigation stuff"
	html div 
		class: 'navigation';
		with: [ html render: myNavigation ].