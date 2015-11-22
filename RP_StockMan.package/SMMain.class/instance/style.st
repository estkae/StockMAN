as yet unclassified
style
^ '
.menu-marker {  
	position: fixed;
	top: 50px;
	left: 50px;
}
.menu {  
	color: black;
	cursor: pointer;
}
.heading-main { 
	margin-top: 30px; 
	font-family: Monda;
	font-size: 88px;
	color: lightgray;
}
.menu-header-holder { 
	margin-top:20px;
	padding-bottom:20px;
	border-bottom:4px solid gray;
}	
.menu-header { 
	background-color:white;
	border:none;
	outline:0;
	padding-top:10px;
	padding-left:100px;
	text-decoration: none;
	color:black;
	cursor:pointer;
}	
.menu-header-outline {  
}	

.cbp-spmenu {
	background: #fff;
	position: fixed;
}
.menu-header-outline {  
	padding-bottom:5px;
	border-bottom:2px solid gray;
}

.cbp-spmenu h3 {
	color: #000;
	font-size: 1.9em;
	padding: 20px;
	margin: 0;
	font-weight: 300;
}

.cbp-spmenu > a {
	display: block;
	color: #000;
	font-size: 1.6em;
	font-family: Monda;
	font-weight: 300;
	text-decoration: none;
	cursor: pointer;
}

.cbp-spmenu > a:hover {
	background: lightgray;
}

.cbp-spmenu > a:active {
	background: #afdefa;
	color: #47a3da;
}

/* Orientation-dependent styles for the content of the menu */

.cbp-spmenu-vertical {
	width: 310px;
	height: 100%;
	top: 0;
	/*border-right:4px solid lightblue;*/
	box-shadow: 0px 10px 10px lightgray;
	z-index: 1000;
}

.cbp-spmenu-vertical > a {
	border-bottom: 1px solid gray;;
	padding: 1em;
}

/* Vertical menu that slides from the left or right */

.cbp-spmenu-left {
	left: -310px;
}

.cbp-spmenu-left.cbp-spmenu-open {
	left: 0px;
}

/* Horizontal menu that slides from the top or bottom */

.cbp-spmenu-top {
	top: -150px;
}

.cbp-spmenu-bottom {
	bottom: -150px;
}

.cbp-spmenu-top.cbp-spmenu-open {
	top: 0px;
}

.cbp-spmenu-bottom.cbp-spmenu-open {
	bottom: 0px;
}

/* Transitions */

.cbp-spmenu {
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	transition: all 0.3s ease;
}
/*.cbp-spmenu,
.cbp-spmenu-push {
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	transition: all 0.3s ease;
}*/

/* Example media queries */

@media screen and (max-width: 55.1875em){

	.cbp-spmenu-horizontal {
		font-size: 75%;
		height: 110px;
	}

	.cbp-spmenu-top {
		top: -110px;
	}

	.cbp-spmenu-bottom {
		bottom: -110px;
	}

}

@media screen and (max-height: 26.375em){

	.cbp-spmenu-vertical {
		font-size: 90%;
		width: 190px;
	}

	.cbp-spmenu-left,
	.cbp-spmenu-push-toleft {
		left: -190px;
	}

	.cbp-spmenu-right {
		right: -190px;
	}

	.cbp-spmenu-push-toright {
		left: 190px;
	}
}

.selected {  
	background-color: lightgray;
}

/* override bootstrap */

.container { 
	min-width: 80%
}

/* dashboard styling */

.logout-marker {  
	position: fixed;
	top:50px;
	right:50px;
	font-size: 22px;
	font-family: Monda;
	padding-top: 10px;
	padding-left: 15px;
	padding-right: 15px;
	padding-bottom: 15px;
	border: 4px solid lightblue;
	border-radius: 25px;
	color: gray;
}
.logout-marker a {  
	text-decoration: none;
	cursor: pointer;
	
}
.period-select { 
	margin-top: 50px;
}
.period-select h2 { 
	font-family: Monda;
	font-weight: 400;
}

.pur-orders {  
	margin-top: 30px;
	border: 1px solid lightgray;
	border-radius: 5px;
}
.pur-orders h3 {  
	font-family: Monda;
	font-weight: 400;
}
.dashboard-header {  
	padding-top: 20px;
}
.dashboard-income-title { 
	font-size:28px;
	font-weight:400;
	text-transform:uppercase
}
.dashboard-income-figure { 
	margin-left:0; 
	padding:30px 0;
	font-size:82px;
	letter-spacing:-1px;
	line-height:1em;
	color:#34495e;
	font-weight:300;
}
.dashboard-income-percent { 
	margin-left:0; 
	padding-bottom:20px 0;
	font-size:60px;
	font-weight:300;
	letter-spacing:-2px;
	line-height:1em;
	color:#34495e;
}
.dashboard-income-arrow-up {  
	margin-left:40px;
	color:lightblue;
}
.dashboard-income-arrow-down {  
	margin-left:40px;
	color:red;
}
.dashboard-best-sellers {  
	margin-top: 20px;
	font-size: 16px;
	font-weight: 400;
}
.dashboard-other-title { 
	font-size:24px;
	font-weight:400;
	text-transform:uppercase
}
hr { 
	border-top: 2px solid lightgray;
}
/* */
.border-under {  
	border-bottom: 2px solid lightgray;
}
'