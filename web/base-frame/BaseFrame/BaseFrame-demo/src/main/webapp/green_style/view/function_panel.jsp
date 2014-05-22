<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<HTML>
<HEAD>
    <TITLE></TITLE>
    <META http-equiv=Content-Type content="text/html; charset=UTF-8">
    <LINK
            href="<%=path%>/view/home2/resources/css/style.css"
            type=text/css rel=stylesheet>
</HEAD>

<frameset cols="*,10" frameborder="NO" border="0" framespacing="0">
    <FRAMESET id=frame1 border=0 frameSpacing=0 rows=100,*,30
              frameBorder=no>
        <FRAME name=menu_info src="menu_info.jsp" frameBorder=0 noResize
               scrolling=no>
        <FRAME name=menu_main src="menu_list.jsp" frameBorder=0 noResize>
        <FRAME name=menu_down src="menu_down.jsp" frameBorder=0 noResize
               scrolling=no>
    </FRAMESET>
    <frame src="fimg.jsp" name="rightF" scrolling="NO" noresize>
</frameset>
</HTML>
