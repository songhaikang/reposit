<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String role = "管理员";
%>
<html>
	<head>

		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<title>刷新不变化树形菜单 - js树形菜单_树形菜单代码</title>
		<style type="text/css">
body,td,th {
	font-size: 12px;
	color:#43860c;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.leftmenu1 {PADDING-LEFT:15px;font-weight: bold; cursor: hand; padding-top: 4px; height: 29px; text-align: left;}
.leftmenu2 {PADDING-LEFT:35px; height: 21px;text-align: left;}
div{ margin-top:0px; width:100%; text-align:center; }
</style>


		<style type="text/css">
<!--
.STYLE2 {color: #43860c; font-size: 12px; }
a:link {font-size:12px; text-decoration:none; color:#43860c;}
a:visited {font-size:12px; text-decoration:none; color:#43860c;}
a:hover{font-size:13px; text-decoration:none; color:#FF0000;}
-->
</style>
	</head>
	<body>
		<div>
			<script language="JavaScript" type="text/javascript">
// 询问注销系统ϵͳ
function iflogout(){
	if(window.confirm('确定退出吗？')){
		document.getElementById("loginExit").submit();
	  	parent.parent.location="../../../view/menu/login.jsp"; 
	}
}


function Show(id,i_id){
        var on_img="<%=path %>/green_style/resources/images/tree/blue_folder.gif";//打开时图片
        var off_img="<%=path %>/green_style/resources/images/tree/yellow_folder.gif";//隐藏时图片
        var obj=document.getElementById('c_'+id);
        if(obj.style.display=="none"){
                obj.style.display="";
        i_id.src=on_img;
        //将子菜单Id放入Cookies
        var curShow = readCookie('curShow');
        if(curShow!='')
        {
          var arr_curShow = curShow.split(',');
          var found = false;
          for(i=0;i<arr_curShow.length-1;i++)
          {
            if(arr_curShow[i].toString()==id) {found=true;}
          }
          if(!found){writeCookie('curShow',curShow+','+id,12)}
        }
        else {
          writeCookie('curShow',id,12)
        }
        //将子菜单Id放入Cookies End
        }else{
                obj.style.display="none";
        i_id.src=off_img;
        //将子菜单Id从Cookies中移除
        var curShow = readCookie('curShow');
        if(curShow!='')
        {
          var arr_curShow = curShow.split(',');
          for(i=0;i<arr_curShow.length;i++)
          {
            if(arr_curShow[i].toString()==id) {arr_curShow=arr_curShow.del(i--);}
          }
          curShow = arr_curShow.join(',');
          //alert(curShow);
          writeCookie('curShow',curShow,12)
        }
        //将子菜单Id从Cookies中移除 End
        }

}

function readCookie(name)

{

  var cookieValue = "";

  var search = name + "=";

  if(document.cookie.length > 0)

  {

    offset = document.cookie.indexOf(search);

    if (offset != -1)

    {

      offset += search.length;

      end = document.cookie.indexOf(";", offset);

      if (end == -1) end = document.cookie.length;

      cookieValue = unescape(document.cookie.substring(offset, end))

    }

  }

  return cookieValue;

}

function writeCookie(name, value, hours)

{

  var expire = "";

  if(hours != null)

  {

    expire = new Date((new Date()).getTime() + hours * 3600000);

    expire = "; expires=" + expire.toGMTString();

  }

  document.cookie = name + "=" + escape(value) + expire;

}
Array.prototype.del=function(n) {  //n表示第几项，从0开始算起。
//prototype为对象原型，注意这里为对象增加自定义方法的方法。
  if(n<0)  //如果n<0，则不进行任何操作。
    return this;
  else
    return this.slice(0,n).concat(this.slice(n+1,this.length));
}


window.onload = function a()
{
  var curShow = readCookie('curShow');
  var totalShow = 5;  //自己修改一共有多少个二级分类
  if(curShow!=''&&curShow!=null)
  {
    for(i=1;i<=totalShow;i++)
    {
      document.getElementById('c_'+i).display="none";
    }
    var arr_curShow;
    arr_curShow = curShow.split(',');
    for(i=0;i<=arr_curShow.length-1;i++)
    {
      if(arr_curShow[i]!=''){document.getElementById('c_'+arr_curShow[i]).style.display="";}
    }

  }
}
</script>

			<table border="0" align="left" cellpadding="0" cellspacing="0">

				<tbody>
					<tr>
						<td class="leftmenu1">
							<a style="cursor: pointer" onclick="Show(1,img1)"><img
									src="<%=path %>/green_style/resources/images/tree/yellow_folder.gif"
									width="16" height="16" id="img1" /><span
								class="ft_white"> 个人资料</span>
							</a>
						</td>
					</tr>
				</tbody>
				<tbody id="c_1" style="display: none">
					<tr>
						<td class="leftmenu2">
							<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TBODY>
									<TR>
										<TD>
											<TABLE class=STYLE2 id=MEMU_01d cellSpacing=0 cellPadding=0
												border=0>
												<TBODY>
													<TR>
														<TD>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="查看个人信息"
																				src="<%=path%>/green_style/resources/images/@attendance.gif" width=16
																				align="middle">
																		</TD>
																		<TD colSpan=2>
																			<A target="main" href="conusers!usersInfo.action">&nbsp;查看个人信息</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="修改个人信息"
																				src="<%=path%>/green_style/resources/images/customer.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main" href="conusers!usersToUpdate.action">&nbsp;修改个人信息</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE border=0 cellspacing=0 cellpadding=0
																style="border:0px solid black">
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="修改密码"
																				src="<%=path%>/green_style/resources/images/system.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="<%=path%>/control/users/passwordUpdate.jsp">&nbsp;修改密码</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
                                                                            
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="注册账户"
																				src="<%=path%>/green_style/resources/images/node_user.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="<%=path%>/control/users/usersAdd.jsp">&nbsp;注册账户</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blankl.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="退出"
																				src="<%=path%>/green_style/resources/images/dns.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A href="#" onclick="iflogout()">&nbsp;退出</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>

														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</td>
					</tr>
				</tbody>










				<tbody>
					<tr>
						<td class="leftmenu1">
							<a style="cursor: pointer" onclick="Show(2,img2)"><img
									src="<%=path %>/green_style/resources/images/tree/yellow_folder.gif"
									width="16" height="16" id="img2" /><span
								class="ft_white"> 文章管理</span>
							</a>
						</td>
					</tr>
				</tbody>
				<tbody id="c_2" style="display: none">
					<tr>
						<td class="leftmenu2">
							<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TBODY>
									<TR>
										<TD>
											<TABLE class=STYLE2 id=MEMU_01d style="DISPLAY: "
												cellSpacing=0 cellPadding=0 border=0>
												<TBODY>
													<TR>
														<TD>


															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blankl.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="发表文章"
																				src="<%=path%>/green_style/resources/images/new_email.gif" width=16
																				align="middle">
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conarticle!articleToAdd.action">&nbsp;发表文章</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>


														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</td>
					</tr>
				</tbody>






				<tbody>
					<tr>
						<td class="leftmenu1">
							<a style="cursor: pointer" onclick="Show(3,img3)"><img
									src="<%=path %>/green_style/resources/images/tree/yellow_folder.gif"
									width="16" height="16" id="img3" /><span
								class="ft_white"> 文章查看</span>
							</a>
						</td>
					</tr>
				</tbody>
				<tbody id="c_3" style="display: none">
					<tr>
						<td class="leftmenu2">
							<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TBODY>
									<TR>
										<TD>
											<TABLE class=STYLE2 id=MEMU_01d style="DISPLAY: "
												cellSpacing=0 cellPadding=0 border=0>
												<TBODY>
													<TR>
														<TD>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="Java类文章"
																				src="<%=path%>/green_style/resources/images/poll.gif" width=16
																				align="middle">
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conarticle!articleList.action?articleBean.model=Java">&nbsp;Java类文章</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>

															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="Web类文章"
																				src="<%=path%>/green_style/resources/images/system2.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conarticle!articleList.action?articleBean.model=Web">&nbsp;Web类文章</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="作品简介"
																				src="<%=path%>/green_style/resources/images/number_fun.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conarticle!articleList.action?articleBean.model=作品">&nbsp;作品简介</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="IT新闻"
																				src="<%=path%>/green_style/resources/images/@information.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conarticle!articleList.action?articleBean.model=新闻">&nbsp;IT新闻</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="个人文章"
																				src="<%=path%>/green_style/resources/images/zg_dream.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conarticle!articleList.action?articleBean.model=个人">&nbsp;个人文章</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="综合文章"
																				src="<%=path%>/green_style/resources/images/@bbs.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conarticle!articleList.action?articleBean.model=综合">&nbsp;综合文章</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blankl.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="推荐文章"
																				src="<%=path%>/green_style/resources/images/@wage.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conarticle!articleMasterUpList.action?articleBean.sign1=sign">&nbsp;推荐文章</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>

														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</td>
					</tr>
				</tbody>

				<tbody>
					<tr>
						<td class="leftmenu1">
							<a style="cursor: pointer" onclick="Show(4,img4)"><img
									src="<%=path %>/green_style/resources/images/tree/yellow_folder.gif"
									width="16" height="16" id="img4" /><span
								class="ft_white"> 文件管理</span>
							</a>
						</td>
					</tr>
				</tbody>
				<tbody id="c_4" style="display: none">
					<tr>
						<td class="leftmenu2">
							<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TBODY>
									<TR>
										<TD>
											<TABLE class=STYLE2 id=MEMU_01d style="DISPLAY: "
												cellSpacing=0 cellPadding=0 border=0>
												<TBODY>
													<TR>
														<TD>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blankl.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="文件上传"
																				src="<%=path%>/green_style/resources/images/webmail.gif" width=16
																				align="middle">
																		</TD>
																		<TD colSpan=2>
																			<A target="main" href="confiles!filesToAdd.action">&nbsp;文件上传</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>



														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</td>
					</tr>
				</tbody>

				<tbody>
					<tr>
						<td class="leftmenu1">
							<a style="cursor: pointer" onclick="Show(5,img5)"><img
									src="<%=path %>/green_style/resources/images/tree/yellow_folder.gif"
									width="16" height="16" id="img5" /><span
								class="ft_white"> 文件查看</span>
							</a>
						</td>
					</tr>
				</tbody>
				<tbody id="c_5" style="display: none">
					<tr>
						<td class="leftmenu2">
							<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TBODY>
									<TR>
										<TD>
											<TABLE class=STYLE2 id=MEMU_01d style="DISPLAY: "
												cellSpacing=0 cellPadding=0 border=0>
												<TBODY>
													<TR>
														<TD>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="我上传的文件"
																				src="<%=path%>/green_style/resources/images/lawdata.gif" width=16
																				align="middle">
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="confiles!filesList.action?filesBean.type=file">&nbsp;我上传的文件</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>

															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blankl.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="我上传的图片"
																				src="<%=path%>/green_style/resources/images/imagelib.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="confiles!filesList.action?filesBean.type=img">&nbsp;我上传的图片</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>


														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</td>
					</tr>
				</tbody>





				<%
				if (role.equals("管理员")) {
				%>
				<tbody>
					<tr>
						<td class="leftmenu1">
							<a style="cursor: pointer" onclick="Show(6,img6)"><img
									src="<%=path %>/green_style/resources/images/tree/yellow_folder.gif"
									width="16" height="16" id="img6" /><span
								class="ft_white"> 系统维护</span>
							</a>
						</td>
					</tr>
				</tbody>
				<tbody id="c_6" style="display: none">
					<tr>
						<td class="leftmenu2">
							<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TBODY>
									<TR>
										<TD>
											<TABLE class=STYLE2 id=MEMU_01d style="DISPLAY: "
												cellSpacing=0 cellPadding=0 border=0>
												<TBODY>
													<TR>
														<TD>


															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="本站简介"
																				src="<%=path%>/green_style/resources/images/@chatroom.gif" width=16
																				align="middle">
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conadmin!pageToUpdate.action?basicBean.value1=bssDescript">&nbsp;本站简介</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="找回密码模板"
																				src="<%=path%>/green_style/resources/images/mbsms.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conadmin!pageToUpdate.action?basicBean.value1=passwodFind">&nbsp;找回密码模板</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="申请账户模板"
																				src="<%=path%>/green_style/resources/images/netchat.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conadmin!pageToUpdate.action?basicBean.value1=usersAdd">&nbsp;申请账户模板</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="文章版块"
																				src="<%=path%>/green_style/resources/images/@office_Product.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conadmin!pageToUpdate.action?basicBean.value1=articleModel">&nbsp;文章版块</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blank.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="文章模板"
																				src="<%=path%>/green_style/resources/images/identity_card.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conadmin!pageToUpdate.action?basicBean.value1=article">&nbsp;文章模板</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															<TABLE class=STYLE2 cellSpacing=0 cellPadding=0 border=0>
																<TBODY>
																	<TR>
																		<TD>
																			<IMG src="<%=path%>/green_style/resources/images/tree_blankl.gif">
																		</TD>
																		<TD>
																			<IMG height=16 title="模板更新"
																				src="<%=path%>/green_style/resources/images/@assess.gif" width=16
																				align="middle" border=0>
																		</TD>
																		<TD colSpan=2>
																			<A target="main"
																				href="conadmin!articleCreateAll.action">&nbsp;模板更新</A>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>


														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</td>
					</tr>
				</tbody>
				<%
				}
				%>




			</table>
		</div>
		<form id="loginExit" name="loginExit"
			action="conusers!usersExit.action" method="post"></form>
	</body>
</html>
