<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%>
<%@ page import="com.bean.*" %>
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>后台操作区</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/calendar.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<script type="text/javascript">
function checkww22()
{//String xm="";String xb="";String cs="";String fm="";String zz="";String dh="";String yx=""; 
	if(document.form1.je.value==""  )
	{
		alert("所有项目必须填写！");
		return false;
	}
	 
	 
}
</script>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
	 
%>
<BODY >
	   <form action="<%=basePath %>ComServlet?method=czhyk" name="form1" onsubmit="return checkww22()"   >
	<TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY> 
		  <TR align="center">  
		  <TD width=40% align=right>会员卡号码： </TD>
		  <TD align=left><select name=hykid>
    <%List cl=cb.getCom("select * from hyk where sd='未' and gs='未' order by id desc",3);if(!cl.isEmpty()){for(int i=0;i<cl.size();i++){List list2=(List)cl.get(i);%>
    <option value="<%=list2.get(0).toString() %>"><%=list2.get(1).toString() %></option>
    <%}} %>
    </select></TD>
		  </TR> 
		  <TR align="center">  
		  <TD width=40% align=right>充值金额： </TD>
		  <TD align=left><input type=text name=je  size=30 maxlength=30  onkeyup="if(!(/^[\d]+\.?\d*$/.test(this.value))){alert('您的输入有误');this.value='';this.focus();}"> 元</TD>
		  </TR> 
		  <TR align="center">  
		  <TD  colspan=2 align=center><input type=submit  value=提交> </TD>
		  </TR>
		  </TBODY>
		  </TABLE>
		  </form>
</BODY>
<%} %>

</HTML>
