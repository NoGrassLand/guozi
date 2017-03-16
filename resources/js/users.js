			$(document).ready(function() {		
			    var table = $('#example').DataTable( {
			    	"ajax": "/json.json",
//			        "scrollY": "200px",
			         "scrollY": '50vh', 
			         "scrollCollapse": true,
			        "paging": false,
			        "columnDefs": [
			        	{ "data": "name","targets":0 },
			            { "data": "position","targets":1  },
			            { "data": "salary","targets":2  },
			            { "data": "null",
			            	"targets":3  ,
			            	"defaultContent": "<input type='checkbox'>" 
			            },
			            { "data": "null",
			            	"targets":4  ,
			            	"defaultContent": "<input type='checkbox'>" 
			            },
			            { "data": "null",
			            	"targets":5  ,
			            	"defaultContent": "<input type='checkbox'>" 
			            },
			            { "data": "null",
			            	"targets":6  ,
			            	"defaultContent": "<input type='checkbox'>" 
			            },
			            { "targets": -1,
				            "data": null,
				            "defaultContent": "<button class='btn btn-primary btn-sm'>取消连接</button>"  
				        }
			           
			        ],
			        "info" : false
				   
			    } )
//			    click点击事件
			    
			    $('#example tbody').on( 'click', 'button', function () {
			        var data = table.row( $(this).parents('tr') ).data();
			        alert( data[ 1 ] +"'s salary is: "+ data[ 3 ] );
//			        alert( data[ 1 ] +"'s salary is: "+ data[ 3 ] );
			    } );	
			    
//				 /click点击事件	

//				删除


			    $('#example tbody').on( 'click', 'button', function () {
			         var data = table.row( $(this).parents('tr') );
//			        console.log(data)
			        data.remove().draw( false)
//			        alert( data.name +"'s salary is: "+ data.office );
			    } );	
//				/删除

//			bootstrap typeahead
			$('.typeahead').typeahead({
				source : function(query, process) {
					$.get('/picker/user/' + query, function(json) {
						process(json.data);
					});
				},
				autoSelect : false,
				minLength : 3,
				delay : 500,
				matcher : function() {
					return true
				},
				afterSelect : function(item) {
					$('#target').val('/home/' + item.id);
				}
			}).change(function() {
				if (!$(this).val())
					$('#target').val('/home');
			});
//			bootstrap typeahead

					   
			} ); 
			