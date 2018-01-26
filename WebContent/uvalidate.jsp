<%@include file="connect.jsp"%>
<% 
   try
   {
    String uid=request.getParameter("uid");
    String psd=request.getParameter("psd");
    PreparedStatement pst=con.prepareStatement("select * from shop_user where userid=? and password=?");
    pst.setString(1,uid);
    pst.setString(2,psd);
    ResultSet rs=pst.executeQuery();
    if(rs.next())
    {
	   session.setAttribute("userid",uid);
	   response.sendRedirect("shophome.jsp");
    }
   else
   {
    %> 
    <%@include file="ulogin.html"%>
    <center><h2 style="color:red"><i>Invalid userId and Password</i></h5></center>
    <%
   }
   con.close();
  }
  catch(Exception e){}
   	   
  
   








%>
