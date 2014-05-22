<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<HTML>
<HEAD>
    <TITLE>首页</TITLE>
    <META http-equiv=Content-Type content="text/html; charset=UTF-8">

    <LINK
            href="<%=path%>/view/home2/resources/css/style.css"
            type=text/css rel=stylesheet>

    <SCRIPT
            src="<%=path%>/view/home2/resources/js/homepage.js"></SCRIPT>


</HEAD>
<BODY class=bodycolor leftMargin=5 topMargin=5>
<TABLE height="100%" cellSpacing=0 cellPadding=1 width="100%" border=0>
<TBODY>
<TR>
<TD id=col_l vAlign=top width="65%">
<SCRIPT>
    function open_news(NEWS_ID, FORMAT) {
        URL = "/function/news/show/read_news.php?NEWS_ID=" + NEWS_ID;
        myleft = (screen.availWidth - 500) / 2;
        mytop = 150
        mywidth = 550;
        myheight = 400;
        if (FORMAT == "1") {
            myleft = 0;
            mytop = 0
            mywidth = screen.availWidth - 10;
            myheight = screen.availHeight - 40;
        }
        window.open(URL, "read_news", "height=" + myheight + ",width=" + mywidth + ",status=1,toolbar=no,menubar=no,location=no,scrollbars=yes,top=" + mytop + ",left=" + myleft + ",resizable=yes");
    }
    function re_news(NEWS_ID) {
        URL = "/function/news/show/re_news.php?NEWS_ID=" + NEWS_ID;
        myleft = (screen.availWidth - 500) / 2;
        window.open(URL, "read_news", "height=400,width=550,status=1,toolbar=no,menubar=no,location=no,scrollbars=yes,top=150,left=" + myleft + ",resizable=yes");
    }
</SCRIPT>
<DIV id=module_2 style="PADDING-BOTTOM: 10px; POSITION: relative">
    <TABLE style="TABLE-LAYOUT: fixed" height=1 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD class=homepageline></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0
           border=0 width="100%">
        <TBODY>
        <TR>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff>
                <TABLE class=small cellSpacing=1 height="166">
                    <TBODY>
                    <TR>
                        <TD class=TableHeader id=module_2_head vAlign="middle"
                            noWrap align=left width="99%" height=22>

                            <IMG height=16 src="<%=path%>/green_style/resources/images/news.gif" width=16
                                 align="middle">
                            &nbsp;新闻(TOP6)
                        </TD>
                        <TD class=TableControl id=module_2_op vAlign="middle"
                            noWrap align="center" width=20>
                            <A
                                    href="<%=path%>/xinxi!showtype.action"
                                    target="main"><IMG height=16
                                                       src="<%=path%>/green_style/resources/images/green_arrow.gif"
                                                       alt="全部信息类型"
                                                       width=16 align="middle" border=0> </A>
                        </TD>
                    </TR>
                    <TR style="BACKGROUND: #ffffff">
                        <td>
                            <iframe src="" frameborder="0" height="100" width="100%"
                                    scrolling="auto"></iframe>
                        </td>
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD class=homepageline width=1>
            </TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" height=5 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
</DIV>


<DIV id=module_3 style="PADDING-BOTTOM: 10px; POSITION: relative">
    <TABLE style="TABLE-LAYOUT: fixed" height=1 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD class=homepageline></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0
           border=0 width="100%">
        <TBODY>
        <TR>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff>
                <TABLE class=small cellSpacing=1 height="166">
                    <TBODY>
                    <TR>
                        <TD class=TableHeader id=module_3_head vAlign="middle"
                            noWrap align=left width="99%" height=22>
                            <IMG height=16 src="<%=path%>/green_style/resources/images/news.gif" width=16
                                 align="middle">
                            &nbsp;新闻(TOP7)
                        </TD>
                        <TD class=TableControl id=module_3_op vAlign="middle"
                            noWrap align="center" width=20>
                            <A
                                    href="<%=path%>/xinxi!showtype.action"
                                    target="main"><IMG height=16
                                                       src="<%=path%>/green_style/resources/images/green_arrow.gif"
                                                       alt="全部信息类型"
                                                       width=16 align="middle" border=0> </A>
                        </TD>
                    </TR>
                    <TR style="BACKGROUND: #ffffff">
                        <td>
                            <iframe src="" frameborder="0" height="100" width="100%"
                                    scrolling="auto"></iframe>
                        </td>
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD class=homepageline width=1>
            </TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" height=5 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
</DIV>


<DIV id=module_4 style="PADDING-BOTTOM: 10px; POSITION: relative">
    <TABLE style="TABLE-LAYOUT: fixed" height=1 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD class=homepageline></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0
           border=0 width="100%">
        <TBODY>
        <TR>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff>
                <TABLE class=small cellSpacing=1 height="126">
                    <TBODY>
                    <TR>
                        <TD class=TableHeader id=module_4_head vAlign="middle"
                            noWrap align=left width="99%" height=22>
                            <IMG height=16 src="<%=path%>/green_style/resources/images/news.gif" width=16
                                 align="middle">
                            &nbsp;新闻(TOP8)
                        </TD>
                        <TD class=TableControl id=module_4_op vAlign="middle"
                            noWrap align="center" width=20>
                            <A
                                    href="<%=path%>/xinxi!showtype.action"
                                    target="main"><IMG height=16
                                                       src="<%=path%>/green_style/resources/images/green_arrow.gif"
                                                       alt="全部信息类型"
                                                       width=16 align="middle" border=0> </A>
                        </TD>
                    </TR>
                    <TR style="BACKGROUND: #ffffff">
                        <td>
                            <iframe src="" frameborder="0" height="60" width="100%"
                                    scrolling="auto"></iframe>
                        </td>
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD class=homepageline width=1>
            </TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" height=5 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
</DIV>


<DIV></DIV>
</TD>
<TD width=10></TD>
<TD id=col_r vAlign=top align="center">


<DIV id=module_16 style="PADDING-BOTTOM: 10px; POSITION: relative">
    <TABLE style="TABLE-LAYOUT: fixed" height=1 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD class=homepageline></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0
           border=0 width="100%">
        <TBODY>
        <TR>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff>
                <TABLE class=small cellSpacing=1 height="80">
                    <TBODY>
                    <TR>
                        <TD class=TableHeader id=module_16_head vAlign="middle"
                            noWrap align=left width="99%" height=22>
                            &nbsp;
                            <IMG height=16 src="<%=path%>/green_style/resources/images/node_user.gif"
                                 width=16 align="middle">
                            员工查询
                        </TD>
                        <TD class=TableControl id=module_16_more vAlign="middle"
                            noWrap align="center" width=25>
                            <A
                                    href="<%=path%>/JSPView/zuzhiView/frameset_emp.jsp"
                                    target="main"> <IMG height=16 alt="查看全部员工"
                                                        src="<%=path%>/green_style/resources/images/green_arrow.gif"
                                                        width=16
                                                        align="middle" border=0> </A>
                        </TD>
                    </TR>
                    <TR style="BACKGROUND: #ffffff">
                        <td colspan="2" height=90>
                            <iframe src="" scrolling="no" frameborder="0"
                                    style="width:100%;height:100%;top:0px;"></iframe>
                        </td>
                    </TR>
                    <TR id=module_16_edit
                        style="DISPLAY: none; BACKGROUND: #ffffff">
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD class=homepageline width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" height=5 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
</DIV>


<DIV id=module_12 style="PADDING-BOTTOM: 10px; POSITION: relative">
    <TABLE style="TABLE-LAYOUT: fixed" height=1 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD class=homepageline></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0
           border=0 width="100%">
        <TBODY>
        <TR>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff>
                <TABLE class=small cellSpacing=1 height="80">
                    <TBODY>
                    <TR>
                        <TD class=TableHeader id=module_12_head vAlign="middle"
                            noWrap align=left width="99%" height=22>
                            &nbsp;
                            <IMG height=16 src="<%=path%>/green_style/resources/images/node_user.gif"
                                 width=16 align="middle">
                            网站新闻
                        </TD>
                        <TD class=TableControl id=module_12_more vAlign="middle"
                            noWrap align="center" width=25>
                            <A
                                    href="<%=path%>/JSPView/zuzhiView/frameset_emp.jsp"
                                    target="main"> <IMG height=16 alt="查看全部员工"
                                                        src="<%=path%>/green_style/resources/images/green_arrow.gif"
                                                        width=16
                                                        align="middle" border=0> </A>
                        </TD>
                    </TR>
                    <TR style="BACKGROUND: #ffffff">
                        <td colspan="2" height=90>
                            <iframe src="" scrolling="no" frameborder="0"
                                    style="width:100%;height:100%;top:0px;"></iframe>
                        </td>
                    </TR>
                    <TR id=module_12_edit
                        style="DISPLAY: none; BACKGROUND: #ffffff">
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD class=homepageline width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" height=5 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
</DIV>


<DIV id=module_13 style="PADDING-BOTTOM: 10px; POSITION: relative">
    <TABLE style="TABLE-LAYOUT: fixed" height=1 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD class=homepageline></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0
           border=0 width="100%">
        <TBODY>
        <TR>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff>
                <TABLE class=small cellSpacing=1 height="80">
                    <TBODY>
                    <TR class=TableControl>
                        <TD colspan="3" class=TableHeader id=module_13_head
                            vAlign="middle" noWrap align=left width="99%" height=22>
                            &nbsp;
                            <IMG height=16 src="<%=path%>/green_style/resources/images/bookmark.gif"
                                 width=16 align="middle">
                            个人设置
                        </TD>
                        <TD class=TableControl id=module_13_op vAlign="middle"
                            noWrap align="center" width=25>
                            <A href="#"> <IMG height=16 alt=个人设置
                                              src="<%=path%>/green_style/resources/images/green_arrow.gif" width=16
                                              align="middle" border=0> </A>
                        </TD>
                    </TR>
                    <TR style="BACKGROUND:#ffffff">
                        <TD height=50 colspan="4" style="text-align:center;">
                            <a
                                    href="<%=path%>/QX!get_myQX.action"
                                    target="main"><img
                                    src="<%=path%>/green_style/resources/images/set/function.gif"
                                    alt="查看我的权限" border="0"> </a>
                            <a
                                    href="<%=path%>/xinxi!showinformation.action"
                                    target="main"><img
                                    src="<%=path%>/green_style/resources/images/set/info.gif"
                                    alt="查看新闻" border="0"> </a>
                            <a
                                    href="<%=path%>/JSPView/quanxianView/update_password.jsp"
                                    target="main"><img
                                    src="<%=path%>/green_style/resources/images/set/uppass.gif"
                                    alt="修改我的密码" border="0"> </a>
                        </TD>
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD class=homepageline width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" height=5 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
</DIV>


<DIV id=module_14 style="PADDING-BOTTOM: 10px; POSITION: relative">
    <TABLE style="TABLE-LAYOUT: fixed" height=1 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD class=homepageline></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0
           border=0 width="100%">
        <TBODY>
        <TR>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff>
                <TABLE class=small cellSpacing=1 height="80">
                    <TBODY>
                    <TR>
                        <TD class=TableHeader id=module_14_head vAlign="middle"
                            noWrap align=left width="99%" height=22>
                            &nbsp;
                            <IMG height=16 src="<%=path%>/green_style/resources/images/node_user.gif"
                                 width=16 align="middle">
                            友情连接
                        </TD>
                        <TD class=TableControl id=module_14_more vAlign="middle"
                            noWrap align="center" width=25>
                            <A
                                    href="<%=path%>/JSPView/zuzhiView/frameset_emp.jsp"
                                    target="main"> <IMG height=16 alt="查看全部员工"
                                                        src="<%=path%>/green_style/resources/images/green_arrow.gif"
                                                        width=16
                                                        align="middle" border=0> </A>
                        </TD>
                    </TR>
                    <TR style="BACKGROUND: #ffffff">
                        <td colspan="2" height=90>
                            <iframe src="" scrolling="no" frameborder="0"
                                    style="width:100%;height:100%;top:0px;"></iframe>
                        </td>
                    </TR>
                    <TR id=module_14_edit
                        style="DISPLAY: none; BACKGROUND: #ffffff">
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD class=homepageline width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE style="TABLE-LAYOUT: fixed" height=5 cellSpacing=0
           cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD bgColor=#ffffff></TD>
            <TD class=homepageline width=1></TD>
            <TD class=homepageline width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        <TR height=1>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD class=homepageline></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
            <TD width=1></TD>
        </TR>
        </TBODY>
    </TABLE>
</DIV>


</TD>
</TR>
</TBODY>
</TABLE>
<SCRIPT>
    _upc();
</SCRIPT>
</BODY>
</HTML>
