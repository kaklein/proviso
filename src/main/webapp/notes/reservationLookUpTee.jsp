<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<html>
<head>
	<title>ThaiCreate.Com JSP Tutorial</title>
</head>
<body>
<%
	String keyword = "";
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}
%>

	<form name="frmSearch" method="get" action="">
	  <table>
	    <tr>
	      <th>
	      <input name="txtKeyword" type="text" id="txtKeyword" value="<%=keyword%>">
	      <input type="submit" value="Search"></th>
	    </tr>
	  </table>
	</form>

	<%
	Connection connect = null;
	Statement s = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		connect =  DriverManager.getConnection("jdbc:mysql://localhost/proviso" +
				"?user=proviso_user&password=password");
		
		s = connect.createStatement();
		
		String sql = "SELECT * FROM  orders WHERE id like '%" +  keyword + "%' " +
		" ORDER BY id ASC";
		
		System.out.println(sql);
		
		ResultSet rec = s.executeQuery(sql);
		%>
		<table  width="600" border="1">
		  <tr>
		    <th width="91"> <div align="center">OrderId </div></th>
		    <th width="98"> <div align="center">checkin_date </div></th>
		    <th width="198"> <div align="center">checkout_date </div></th>
		    <th width="97"> <div align="center">numberof_gust </div></th>
		    <th width="59"> <div align="center">room_size </div></th>
		    <th width="71"> <div align="center">Wifi </div></th>
		      <th width="71"> <div align="center">BreadFast </div></th>
		        <th width="71"> <div align="center">packing </div></th>
		  </tr>	
			<%while((rec!=null) && (rec.next())) { %>
				  <tr>
				    <td><div align="center"><%=rec.getString("id")%></div></td>
				    <td><%=rec.getString("checkin")%></td>
				    <td><%=rec.getString("checkout")%></td>
				    <td><div align="center"><%=rec.getString("guests")%></div></td>
				    <td align="right"><%=rec.getString("room")%></td>
				    <td align="right"><%=rec.getString("wifi")%></td>
				    <td align="right"><%=rec.getString("breakfast")%></td>
				     <td align="right"><%=rec.getString("parking")%></td>
				  </tr>
	       	<%}%>
	  	</table>      
	    <%	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		try {
			if(s!=null){
				s.close();
				connect.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	%>
</body>
</html>





