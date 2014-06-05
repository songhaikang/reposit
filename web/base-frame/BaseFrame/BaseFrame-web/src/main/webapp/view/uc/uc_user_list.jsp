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

<div class="row">
<div class="col-xs-12">

<div class="table-header">
    用户详情列表
</div>

<div class="table-responsive">

<table id="sample-table-2" class="table table-striped table-bordered table-hover">

<thead>
<tr>
    <th class="center">
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </th>
    <th>用户名</th>
    <th>工资（天）</th>
    <th class="hidden-480">分数</th>

    <th>
        <i class="icon-time bigger-110 hidden-480"></i>
        更改日期
    </th>
    <th class="hidden-480">状态</th>

    <th></th>
</tr>
</thead>

<tbody>

<tr>
    <td class="center">
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">app.com</a>
    </td>
    <td>$45</td>
    <td class="hidden-480">3,330</td>
    <td>Feb 12</td>

    <td class="hidden-480">
        <span class="label label-sm label-warning">Expiring</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
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
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
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
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
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
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
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
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">team.com</a>
    </td>
    <td>$40</td>
    <td class="hidden-480">3,200</td>
    <td>Feb 09</td>

    <td class="hidden-480">
        <span class="label label-sm label-inverse arrowed-in">Flagged</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">up.com</a>
    </td>
    <td>$95</td>
    <td class="hidden-480">8,520</td>
    <td>Feb 22</td>

    <td class="hidden-480">
        <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">view.com</a>
    </td>
    <td>$45</td>
    <td class="hidden-480">4,100</td>
    <td>Mar 12</td>

    <td class="hidden-480">
        <span class="label label-sm label-success">Registered</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">nice.com</a>
    </td>
    <td>$38</td>
    <td class="hidden-480">3,940</td>
    <td>Feb 12</td>

    <td class="hidden-480">
        <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">fine.com</a>
    </td>
    <td>$25</td>
    <td class="hidden-480">2,983</td>
    <td>Apr 01</td>

    <td class="hidden-480">
        <span class="label label-sm label-warning">Expiring</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">good.com</a>
    </td>
    <td>$50</td>
    <td class="hidden-480">6,500</td>
    <td>Feb 02</td>

    <td class="hidden-480">
        <span class="label label-sm label-inverse arrowed-in">Flagged</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">great.com</a>
    </td>
    <td>$55</td>
    <td class="hidden-480">6,400</td>
    <td>Feb 24</td>

    <td class="hidden-480">
        <span class="label label-sm label-success">Registered</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">shine.com</a>
    </td>
    <td>$25</td>
    <td class="hidden-480">2,200</td>
    <td>Apr 01</td>

    <td class="hidden-480">
        <span class="label label-sm label-inverse arrowed-in">Flagged</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">rise.com</a>
    </td>
    <td>$42</td>
    <td class="hidden-480">3,900</td>
    <td>Feb 01</td>

    <td class="hidden-480">
        <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">above.com</a>
    </td>
    <td>$35</td>
    <td class="hidden-480">3,420</td>
    <td>Mar 12</td>

    <td class="hidden-480">
        <span class="label label-sm label-warning">Expiring</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">share.com</a>
    </td>
    <td>$30</td>
    <td class="hidden-480">3,200</td>
    <td>Feb 11</td>

    <td class="hidden-480">
        <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">fair.com</a>
    </td>
    <td>$35</td>
    <td class="hidden-480">3,900</td>
    <td>Mar 26</td>

    <td class="hidden-480">
        <span class="label label-sm label-inverse arrowed-in">Flagged</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">year.com</a>
    </td>
    <td>$48</td>
    <td class="hidden-480">3,990</td>
    <td>Feb 15</td>

    <td class="hidden-480">
        <span class="label label-sm label-warning">Expiring</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">day.com</a>
    </td>
    <td>$55</td>
    <td class="hidden-480">5,600</td>
    <td>Jan 29</td>

    <td class="hidden-480">
        <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">light.com</a>
    </td>
    <td>$40</td>
    <td class="hidden-480">3,100</td>
    <td>Feb 17</td>

    <td class="hidden-480">
        <span class="label label-sm label-success">Registered</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">sight.com</a>
    </td>
    <td>$58</td>
    <td class="hidden-480">6,100</td>
    <td>Feb 19</td>

    <td class="hidden-480">
        <span class="label label-sm label-inverse arrowed-in">Flagged</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">right.com</a>
    </td>
    <td>$50</td>
    <td class="hidden-480">4,400</td>
    <td>Apr 01</td>

    <td class="hidden-480">
        <span class="label label-sm label-warning">Expiring</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
        <label>
            <input type="checkbox" class="ace"/>
            <span class="lbl"></span>
        </label>
    </td>

    <td>
        <a href="#">once.com</a>
    </td>
    <td>$20</td>
    <td class="hidden-480">1,400</td>
    <td>Apr 04</td>

    <td class="hidden-480">
        <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
    </td>

    <td>
        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
            <a class="blue" href="#">
                <i class="icon-zoom-in bigger-130"></i>
            </a>

            <a class="green" href="#">
                <i class="icon-pencil bigger-130"></i>
            </a>

            <a class="red" href="#">
                <i class="icon-trash bigger-130"></i>
            </a>
        </div>

        <div class="visible-xs visible-sm hidden-md hidden-lg">
            <div class="inline position-relative">
                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down icon-only bigger-120"></i>
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
</div>
</div>
</div>


</div>
<!-- /.col -->
</div>
<!-- /.row -->
</div>
<!-- /.page-content -->
</div>
<!-- /.main-content -->

<jsp:include page="/view/home/home_settings.jsp"/>

</div>
<!-- /.main-container-inner -->

<jsp:include page="/view/home/home_scroll_top.jsp"/>

</div>
<!-- /.main-container -->

<jsp:include page="/view/home/home_compatibility.jsp"/>

<!-- page specific plugin scripts -->

<script src="<%=path%>/bootstrap/assets/js/jquery.dataTables.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/jquery.dataTables.bootstrap.js"></script>

<!-- ace scripts -->

<script src="<%=path%>/bootstrap/assets/js/ace-elements.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    jQuery(function ($) {
        var oTable1 = $('#sample-table-2').dataTable({
            "aoColumns": [
                { "bSortable": false },
                null,
                null,
                null,
                null,
                null,
                { "bSortable": false }
            ] });


        $('table th input:checkbox').on('click', function () {
            var that = this;
            $(this).closest('table').find('tr > td:first-child input:checkbox')
                    .each(function () {
                        this.checked = that.checked;
                        $(this).closest('tr').toggleClass('selected');
                    });

        });


        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }
    })
</script>


</body>
</html>
