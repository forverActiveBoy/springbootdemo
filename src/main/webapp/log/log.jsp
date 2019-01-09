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
						url:"/log/selectByPage.do",
						//pagination 如果为true，则在DataGrid控件底部显示分页工具栏。 
						pagination : true,
						columns:[[
									/* 这里面的每一个对象,表示一列内容 */
									{checkbox:true},
									{title:"编号",field:"id"},
                                    {title:"操作者",field:"operator"},
                                    {title:"时间",field:"time"},
									{title:"操作名称",field:"doWhat"}
								]]
					});
			/* 表格展示数据--------end-------- */
		});
	</script>
  </head>
  
  <body>
  	<!-- 这是展示数据的表格-------------start -->
		<table id = "myTable"></table>
	<!-- 这是展示数据的表格-------------end -->
  </body>
</html>
