<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>My JSP 'easy-ui-show.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


	 <%-- 引入easy-ui样式--------start--%>
	<link rel="stylesheet" type="text/css" href="/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="/themes/default/easyui.css">
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="/js/easyui-lang-zh_CN.js"></script>
	  <%-- 引入easy-ui样式--------start--%>


	<script type="text/javascript">
		$(function(){
			/* 表格展示数据--------start-------- */
					$("#myTable").datagrid({
						url:"/bmAgent/selectByPage.do",
						//pagination 如果为true，则在DataGrid控件底部显示分页工具栏。 
						pagination : true,
						/* 给表格添加双击事件，当双击的时候执行---------start----- */
							onDblClickRow:function(rowIndex,rowData){
								//alert(rowData.username);
								//alert(rowData.id);
								//1.把对应的数据写入修改对话框  $(id_selector).val(rowData.username)
								$("#reusername").val(rowData.agentName);
								$("#reid").val(rowData.id);
                                $("#readdress").val(rowData.address);
                                $("#reabout").val(rowData.about);
								//2.把修改对话框打开
								$("#updateDiv").dialog("open");
							},
						/* 给表格添加双击事件，当双击的时候执行---------end----- */
						columns:[[
									/* 这里面的每一个对象,表示一列内容 */
									{checkbox:true},
									{title:"编号",field:"id"},
                                    {title:"省份",field:"provinceName"},
                                    {title:"城市",field:"cityName"},
									{title:"商会名称",field:"agentName"},
                                    {title:"商会地址",field:"address"},
                                    {title:"商会简介",field:"about"},
									{
										title:"操作",
										field:"a",
										formatter:function(value,row,index){
											var url = "<a href = '#'>修改</a>";
											//return的值就是在页面上看到的内容
											return url;
										}
									}
								]],
						toolbar:"#addBtn",
					});
			/* 表格展示数据--------end-------- */
			
			/* 将对话框提前定义出来，在初始化页面的时候将对话框关闭 ---------start--------*/
				$("#addDiv").dialog({
					title:"添加商会",
					//定义在初始化的时候，关闭面板------start------
					closed:true,
					//定义在初始化的时候，关闭面板-------end
					width:250,
					height:300,
					//对话框底部按钮-------start-----
					buttons:"#addSubmitBtn",
					//对话框底部按钮-------end-----
				});
			/* 将对话框提前定义出来，在初始化页面的时候将对话框关闭 ---------end--------*/
			
			/* 将对话框提前定义出来，在初始化页面的时候将对话框关闭 ---------start--------*/
				$("#updateDiv").dialog({
					title:"修改商会",
					//定义在初始化的时候，关闭面板------start------
					closed:true,
					//定义在初始化的时候，关闭面板-------end
					width:250,
					height:300,
					//对话框底部按钮-------start-----
					buttons:"#updateSubmitBtn",
					//对话框底部按钮-------end-----
				});
			/* 将对话框提前定义出来，在初始化页面的时候将对话框关闭 ---------end--------*/
		});
		
		/* 展示数据表上面的添加按钮对应的点击函数-----------start-------- */
			function toOpenAddDialog(){
				//点击之后，将对话框弹出来
				$("#addDiv").dialog("open");
			};
		/* 展示数据表上面的添加按钮对应的点击函数-----------end-------- */
		
		/* 添加--点击对话框底部的添加按钮，执行向后台发送请求操作*/
					function doAdd(){
						//将普通表单转为表单控件
						$("#addForm").form("submit",{
							url:"/bmAgent/addAgent.do",
							//success表单提交成功之后的回调函数
							success:function(data){
								//alert(data);
								var jsObj = JSON.parse(data);
								if(jsObj.isAdd){
									//如果后台向数据库添加数据库成功之后，则关闭对话框
									$("#addDiv").dialog("close");
									//并且重新加载数据
									$("#myTable").datagrid("reload");
								}else{
									alert(jsObj.errMessage);
								}
							}
						});
					}
		/* 添加--点击按钮提交数据 ==END==*/
		
		
		/* 修改操作的表单提交-----------start----------- */
			function doUpdate(){
						//将普通表单转为表单控件
						$("#updateForm").form("submit",{
							url:"/bmAgent/updateAgent.do",
							//success表单提交成功之后的回调函数
							success:function(data){
							//alert(data);
								var jsObj = JSON.parse(data);
								if(jsObj.isAdd){
									//如果后台向数据库添加数据库成功之后，则关闭对话
									$("#updateDiv").dialog("close");
									//并且重新加载数据
									$("#myTable").datagrid("reload");
								}else{
									alert(jsObj.errMessage);
								}
							}
						});
					}
		/* 修改操作的表单提交-----------end----------- */
		
		
		/* 删除方法------------start--------- */		
		function toDelete(){
			/* getSelections  返回所有被选中的行，当没有记录被选中的时候将返回一个空数组。  */
			/* 	查阅文档可知，getSelections返回所有选中的列对象，并且是个数组
			拿到对象，就可以拿到属性 */
			var rowDatas = $("#myTable").datagrid("getSelections");
			//console.log(rowDatas);
			if(rowDatas.length==0){
				//messager控件可以提供alert效果
				//messager控件就是弹框控件
				$.messager.alert("删除提示框","请选中要删除的数据","warning");
			}else{
				//result就是用户选择的确认还是取消
				//如果选择确认结果就是true    如果选择取消，结果就是false
				$.messager.confirm("确认删除框","确认真的要删除选中的这些数据?",function(result){
					if(result){
						//执行删除操作
						var ids = new Array(rowDatas.length);
						
						//把行数据中的id获取到,放入到声明好的ids数组中
						for(var i=0;i<rowDatas.length;i++){
							ids[i]=rowDatas[i].id;
						}
						//发送ajax请求后台-------------start-----
						$.ajax({
							url:"/bmAgent/deleteMany.do",
							data:"ids="+ids,
							success:function(data){
								//console.log(data);
								if(data.isDelete){
									//刷新datagrid
									$.messager.alert("提示框","删除成功","info");
									$("#myTable").datagrid("reload");
								}else{
									$.messager.alert("删除失败提示框","删除失败,请确认","error");
								}
							}
						});
						//发送ajax请求后台------------end---------------
					}
				});
			}
			
		}
		/* 删除方法------------end--------- */	
		
	</script>
  </head>
  
  <body>
  	<!-- 修改的整体思路：在双击表格的某一行，弹出一个修改对话框，再通过表单控价进行修改 -->
  	
	<!-- 	删除的整体思路：在表格顶部工具栏添加删除按钮，通过一个方法,获得选中的行对象数组
	  	判断，发送ajax请求  -->
	  	
  	<!-- 修改对话框的底部按钮----------------start------ -->
  		 <div id = "updateSubmitBtn">
	  		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" onclick="doUpdate()">修改</a>
	  	</div>
  	<!-- 修改对话框的底部按钮----------------end------ -->
  	
     <!--  添加对话框底部的添加按钮-------------start----- -->
	  <div id = "addSubmitBtn">
	  	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="doAdd()">添加</a>
	  </div>
	 <!--  添加对话框底部的添加按钮-------------end----- -->
	 
	<!--  这是修改对话框----------------start------ -->
		<div id = "updateDiv">
			<form method="post" id = "updateForm">
				<input id = "reid" name = "id" type="hidden"/>
				商会名称：<input id = "reusername" name = "agentName"/>
				商会地址:<input id = "readdress" name = "address"/>
				商会简介:<input id = "reabout" name = "about"/>
	  	</form>
		</div>
	<!--  这是修改对话框----------------end------ -->
	  
  	<!-- 这是对话框窗口中的表单添加-----------start-- -->
	  <div id = "addDiv">
	  	<form method="post" id = "addForm">
	  		商会名称：<input id = "username" name = "agentName"/>
			商会地址:<input id = "address" name = "address"/>
			商会简介:<input id = "about" name = "about"/>
	  	</form>
	  </div>
	 <!-- 这是对话框窗口中的表单添加-----------end-- -->
	 
	  
	 <!--  这是展示表格上面的工具栏--------------------start----- -->
	  <div id="addBtn">
	  	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="toOpenAddDialog()">立即添加</a>
	  	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" onclick="toDelete()">批量删除</a>
	  </div>
	 <!--  这是展示表格上面的工具栏--------------------end----- -->

  	    
  	<!-- 这是展示数据的表格-------------start -->
		<table id = "myTable"></table>
	<!-- 这是展示数据的表格-------------end -->
  </body>
</html>
