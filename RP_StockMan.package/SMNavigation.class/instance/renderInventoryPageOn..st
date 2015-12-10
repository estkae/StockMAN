as yet unclassified
renderInventoryPageOn: html

	| inventoryPage |
	inventoryPage  := SMInventory new.
	html render: inventoryPage.