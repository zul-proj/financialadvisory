<%-- this is for breaking the session --%>

<%@ page import="model.UserModel" %>

<%
UserModel user = (UserModel) session.getAttribute("user");

if (user == null) {
    response.sendRedirect("login.jsp");
    return;
}

%>