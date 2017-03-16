			$(document).ready(function() {
				$("#").click(function(){ 
					$.ajax({
   						type: "post",
  						url: "http://127.0.0.1:8080/signup",
   						data: $("#regForm").serialize(),
   						success: function(data){
						if(data.success){
							alert(data.message);
						} else {
							alert(data.message);
							location.href='http://127.0.0.1:8080';
						}
						}
					});
				});
			
				
				jQuery.validator.addMethod("companyNumber", function(value, element) {
					return this.optional(element) || /^m([0-9]{4,11})/.test(value);
				}, '请输入正确的公司编码');
				
				jQuery.validator.addMethod("mobile", function(value, element) {
					var mobile = /^1[3|4|5|7|8]\d{9}$/;
					return this.optional(element) || (mobile.test(value));
				}, "手机格式不对");

				$("#loginBtn").click(function(event) {
					event.preventDefault();
					$("#loginForm").submit();
				});
				$("#registerBtn").click(function(event) {
					event.preventDefault();
					$("#regForm").submit();
				});
				$("#regForm").validate({
					rules: {
						name: {
							mobile: true,
						},
//						name: {
//							required: true
//						},
						password: {
							required: true,
							minlength: 6,
//							maxlength: 20
						},
						confirmPassword: {
							required: true,
							minlength: 6,
//							maxlength: 20,
							equalTo: "#password"
						}
					}

				});
				
				$("#loginForm").validate({
					rules: {
						companyEncod: {
							companyNumber: true,
						},
						username: {
							mobile: true,
						},
						password: {
							required: true,
							minlength: 6
						}
					},
					messages: {
					
						password: {
							required: '请输入密码',
							minlength: '不能小于{0}个字符'
						}
					}
				
				});
				
				
//				切换
				$('#regId').on('click', function(e) {
					e.preventDefault();
					$('#regCont').show();
					$('#loginCont').hide();
				});
				$('#logId').on('click', function(e) {
					e.preventDefault();
					$('#regCont').hide();
					$('#loginCont').show();
				});
			})

			$('.typeahead').typeahead({
				source : function(query, process) {
					$.get('/picker/merchant/' + query, function(json) {
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