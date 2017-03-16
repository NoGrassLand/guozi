			$(document).ready(function() {		
			    var table = $('#example').DataTable( {
			    	"ajax": "json.json",
			        "scrollY": "200px",
//			         "scrollY": '50vh', 
			         "scrollCollapse": true,
			        "paging": false,
			        "columnDefs": [
			        	{ "data": "null",
			        		"targets":0  ,
			        	},
			        	{ "data": "position","targets":1 },
		            { "data": "salary","targets":2 },
		            
		           
		            { "data": "start_date","targets":3  },
		            { "data": "office","targets":4  },
		            { "targets": -1,
			            "data": null,
				        }
			           
			        ],
						"info" : false ,
						"processing": true,
						"searching" : false,
						"ordering" : false
				   
			    } )
			} )


