as yet unclassified
renderContentOn: html

	| itemStockLevel itemSalesVolume |
	itemStockLevel := self findItemStocklevel: self item itemid.

	html listItem 
		with: [ 
			html div 
				class: 'collapsible-header';
				with: [
					html div 
						class: 'col s12';
						with: [ 
							html italic 
								class: 'large material-icons';
								with: 'info_outline'.
 							html span 
								with: '  ',	self item itemname, ' / ', self item description.
						].			
				].		
			html div 
				class: 'collapsible-body';
				style: 'background-color: #f2f2f2;';
				with: [
					html table 
						"class: 'col s6';"
						style: 'width: 60%;margin-left:20px;';
						with: [ 
							html tableBody 
								with: [ 
									html tableRow
										with: [
											html tableData
												style: 'width:150px;font-size: 20px;font-weight:400;text-transform:uppercase;';
												with: 'Item : '.
											html tableData
												style: 'font-size: 20px;font-weight:300;';
												with: self item itemname.	  
										].
									html tableRow
										with: [
											html tableData
												style: 'width:150px;font-size: 20px;font-weight:400;text-transform:uppercase;';
												with: 'Description : '.
											html tableData
												style: 'font-size: 20px;font-weight:300;';
												with: self item description.	  
										].
									html tableRow
										with: [
											html tableData
												style: 'width:150px;font-size: 20px;font-weight:400;text-transform:uppercase;';
												with: 'Cost Price : '.
											html tableData
												style: 'font-size: 20px;font-weight:300;';
												with: self item costPrice.	
											html tableData
												style: 'width:150px;font-size: 20px;font-weight:400;text-transform:uppercase;';
												with: 'Sell Price : '.
											html tableData
												style: 'font-size: 20px;font-weight:300;';
												with: self item sellPrice.		  
										].
									html tableRow
										with: [
											html tableData
												style: 'width:150px;font-size: 20px;font-weight:400;text-transform:uppercase;';
												with: 'Stock Level : '.
											html tableData
												style: 'font-size: 20px;font-weight:300;';
												with: itemStockLevel stocklevel.	  
										].
									html tableRow
										with: [
											html tableData
												style: 'width:150px;font-size: 20px;font-weight:400;text-transform:uppercase;';
												with: 'Volume : '.
											"html tableData
												style: 'font-size: 20px;font-weight:300;';
												with: [
													self renderStockItemSalesVolumeChartOn: html with: itemSalesVolume 
												]  "
										].
								]	 
						] 
				].
		].	