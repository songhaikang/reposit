<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/view/home/home_head.jsp"/>
</head>

<body>

<jsp:include page="/view/home/home_navbar.jsp"/>

<div class="main-container" id="main-container">
<script type="text/javascript">
    try {
        ace.settings.check('main-container', 'fixed')
    } catch (e) {
    }
</script>

<div class="main-container-inner">
<a class="menu-toggler" id="menu-toggler" href="#">
    <span class="menu-text"></span>
</a>

<jsp:include page="/view/home/home_navigation.jsp"/>

<div class="row">
<div class="col-xs-12">
<!-- PAGE CONTENT BEGINS -->

<div class="row">
<div class="col-xs-12">
<div class="table-header">
    机构管理
    <%--<span style="float:right"><a href="#" class="btn btn-warning" style="width: 70px;height: 30px;padding: 2px 0px 2px">--%>
        <%--新&nbsp;增--%>
    <%--</a>&nbsp;&nbsp;</span>--%>
</div>
<div class="table-responsive">
<div class="dataTables_wrapper" role="grid">

<div class="row">
    <div class="col-sm-6" style="width: 100%">
        <div class="dataTables_filter"  id="sample-table-2_filter">
            <label>机构名称: <input type="text" aria-controls="sample-table-2"></label>&nbsp;&nbsp;&nbsp;&nbsp;
            <label>机构帐号: <input type="text" aria-controls="sample-table-2"></label>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#" class="btn btn-primary" style="width: 70px;height: 30px;padding: 2px 0px 2px">
                查&nbsp;找
            </a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#" class="btn btn-primary" style="width: 70px;height: 30px;padding: 2px 0px 2px">
                重&nbsp;置
            </a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#" class="btn btn-warning" style="width: 70px;height: 30px;padding: 2px 0px 2px">
                新&nbsp;增
            </a>
        </div>
    </div>
</div>

<%--<table id="sample-table-1" class="table table-striped table-bordered table-hover" style="margin-bottom:0px;">--%>
<table id="sample-table-1" class="table table-striped table-bordered table-hover dataTable">


<thead>
<tr>
    <th class="center">
        序号
    </th>
    <th>Domain</th>
    <th>Price</th>
    <th class="hidden-480">Clicks</th>

    <th>
        <i class="icon-time bigger-110 hidden-480"></i>
        Update
    </th>
    <th class="hidden-480">Status</th>
    <th>操作</th>
</tr>
</thead>

<tbody>
<tr>
    <td class="center">
        1
    </td>

    <td>
        <a href="#">ace.com</a>
    </td>
    <td>$45</td>
    <td class="hidden-480">3,330</td>
    <td>Feb 12</td>

    <td class="hidden-480">
        <span class="label label-sm label-warning">Expiring</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
            <button class="btn btn-xs btn-success">
                <i class="icon-ok bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-info">
                <i class="icon-edit bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-danger">
                <i class="icon-trash bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-warning">
                <i class="icon-flag bigger-120"></i>
            </button>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-cog icon-only bigger-110"></i>
                </button>

                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                    <li>
                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </td>
</tr>

<tr>
    <td class="center">
        2
    </td>

    <td>
        <a href="#">base.com</a>
    </td>
    <td>$35</td>
    <td class="hidden-480">2,595</td>
    <td>Feb 18</td>

    <td class="hidden-480">
        <span class="label label-sm label-success">Registered</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
            <button class="btn btn-xs btn-success">
                <i class="icon-ok bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-info">
                <i class="icon-edit bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-danger">
                <i class="icon-trash bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-warning">
                <i class="icon-flag bigger-120"></i>
            </button>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-cog icon-only bigger-110"></i>
                </button>

                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                    <li>
                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </td>
</tr>

<tr>
    <td class="center">
        3
    </td>

    <td>
        <a href="#">max.com</a>
    </td>
    <td>$60</td>
    <td class="hidden-480">4,400</td>
    <td>Mar 11</td>

    <td class="hidden-480">
        <span class="label label-sm label-warning">Expiring</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
            <button class="btn btn-xs btn-success">
                <i class="icon-ok bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-info">
                <i class="icon-edit bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-danger">
                <i class="icon-trash bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-warning">
                <i class="icon-flag bigger-120"></i>
            </button>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-cog icon-only bigger-110"></i>
                </button>

                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                    <li>
                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </td>
</tr>

<tr>
    <td class="center">
        4
    </td>

    <td>
        <a href="#">best.com</a>
    </td>
    <td>$75</td>
    <td class="hidden-480">6,500</td>
    <td>Apr 03</td>

    <td class="hidden-480">
        <span class="label label-sm label-inverse arrowed-in">Flagged</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
            <button class="btn btn-xs btn-success">
                <i class="icon-ok bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-info">
                <i class="icon-edit bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-danger">
                <i class="icon-trash bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-warning">
                <i class="icon-flag bigger-120"></i>
            </button>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-cog icon-only bigger-110"></i>
                </button>

                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                    <li>
                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </td>
</tr>

<tr>
    <td class="center">
        5
    </td>

    <td>
        <a href="#">pro.com</a>
    </td>
    <td>$55</td>
    <td class="hidden-480">4,250</td>
    <td>Jan 21</td>

    <td class="hidden-480">
        <span class="label label-sm label-success">Registered</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
            <button class="btn btn-xs btn-success">
                <i class="icon-ok bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-info">
                <i class="icon-edit bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-danger">
                <i class="icon-trash bigger-120"></i>
            </button>

            <button class="btn btn-xs btn-warning">
                <i class="icon-flag bigger-120"></i>
            </button>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-cog icon-only bigger-110"></i>
                </button>

                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                    <li>
                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </td>
</tr>
</tbody>
</table>


<div class="row">
    <div class="col-sm-6">
        <div class="dataTables_info" id="sample-table-2_info">当前显示 1 到 10 条/总条数： 23</div>
    </div>
    <div class="col-sm-6">
        <div class="dataTables_paginate paging_bootstrap">
            <ul class="pagination">
                <li class="prev disabled"><a href="#"><i class="icon-double-angle-left"></i></a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li class="next"><a href="#"><i class="icon-double-angle-right"></i></a></li>
            </ul>
        </div>
    </div>
</div>

</div>

</div>
<!-- /.table-responsive -->
</div>
<!-- /span -->
</div>
<!-- /row -->


<!-- PAGE CONTENT ENDS -->
</div>
<!-- /.col -->
</div>
<!-- /.row -->
</div>
<!-- /.page-content -->
</div>
<!-- /.main-content -->


<jsp:include page="/view/home/home_settings.jsp"/>


<jsp:include page="/view/home/home_scroll_top.jsp"/>

<!-- /.main-container -->

<jsp:include page="/view/home/home_compatibility.jsp"/>

<!-- page specific plugin scripts -->
<script src="<%=path%>/bootstrap/assets/js/jquery.dataTables.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/jquery.dataTables.bootstrap.js"></script>


<!-- ace scripts -->

<script src="<%=path%>/bootstrap/assets/js/ace-elements.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/ace.min.js"></script>


<!-- inline scripts related to this page -->


</body>
</html>
