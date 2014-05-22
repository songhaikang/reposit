
//登录时的Ajax验证
function checkUser(){
	 var usersname=$('#usersname').val();
	 var password=$('#password').val();
	  if(usersname==''){
	  	Ext.MessageBox.show({
	        title: '警告',
	        msg: '请输入用户名!',
	        buttons: Ext.MessageBox.OK,
	        icon: Ext.MessageBox.WARNING
	    });
		$('#usersname').focus();
	  }else if(password==''){
	  	Ext.MessageBox.show({
	        title: '警告',
	        msg: '请输入密码!',
	        buttons: Ext.MessageBox.OK,
	        icon: Ext.MessageBox.WARNING
	    });
		$('#password').focus();
	  }else{
		   $.post('ajax!checkPassword.action',{'ajaxBean.value1':usersname,'ajaxBean.value2':password},function(msg){
		   	     if(msg==0){
			   		Ext.MessageBox.show({
				        title: '警告',
				        msg: '用户名或密码输入错误!  <br>'+
				             '<a href="http://localhost:8888/BlackSwanSoft/control/users/passwordFind.jsp">找回密码</a> ',
				        buttons: Ext.MessageBox.OK,
				        icon: Ext.MessageBox.WARNING
				    });
		   	     }else if(msg==1){
		   			Ext.MessageBox.show({
				        title: '警告',
				        msg: '该用户未激活!',
				        buttons: Ext.MessageBox.OK,
				        icon: Ext.MessageBox.WARNING
				    });
		   	     }else{
		   	     	document.form1.submit();
		   	     }
		   	});
	  }
}
