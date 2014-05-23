<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>表单提示验证 - Bootstrap后台管理系统模版Ace下载</title>
    <meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文"/>
    <meta name="description" content="站长素材提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- basic styles -->

    <link href="<%=path%>/bootstrap/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/font-awesome.min.css"/>

    <!--[if IE 7]>
    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/font-awesome-ie7.min.css"/>
    <![endif]-->

    <!-- page specific plugin styles -->

    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/select2.css"/>

    <!-- fonts -->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300"/>

    <!-- ace styles -->

    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/ace.min.css"/>
    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/ace-skins.min.css"/>

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="<%=path%>/bootstrap/assets/js/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="<%=path%>/bootstrap/assets/js/html5shiv.js"></script>
    <script src="<%=path%>/bootstrap/assets/js/respond.min.js"></script>
    <![endif]-->
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

            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-header widget-header-blue widget-header-flat">
                            <h4 class="lighter">输入项目信息</h4>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main">

                                <div class="step-content row-fluid position-relative" id="step-container">
                                    <div class="step-pane active" id="step1">
                                        <form class="form-horizontal" id="sample-form">
                                            <div class="form-group has-warning">
                                                <label for="inputWarning"
                                                       class="col-xs-12 col-sm-3 control-label no-padding-right">项目名称：</label>

                                                <div class="col-xs-12 col-sm-5">
																		<span class="block input-icon input-icon-right">
																			<input type="text" id="inputWarning"
                                                                                   class="width-100"/>
																			<i class="icon-leaf"></i>
																		</span>
                                                </div>
                                                <div class="help-block col-xs-12 col-sm-reset inline">
                                                    项目名称已经存在
                                                </div>
                                            </div>

                                            <div class="form-group has-error">
                                                <label for="inputError"
                                                       class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">项目编号：</label>

                                                <div class="col-xs-12 col-sm-5">
																		<span class="block input-icon input-icon-right">
																			<input type="text" id="inputError"
                                                                                   class="width-100"/>
																			<i class="icon-remove-sign"></i>
																		</span>
                                                </div>
                                                <div class="help-block col-xs-12 col-sm-reset inline"> 项目编号不可用</div>
                                            </div>

                                            <div class="form-group has-success">
                                                <label for="inputSuccess"
                                                       class="col-xs-12 col-sm-3 control-label no-padding-right">项目负责人：</label>

                                                <div class="col-xs-12 col-sm-5">
																		<span class="block input-icon input-icon-right">
																			<input type="text" id="inputSuccess"
                                                                                   class="width-100"/>
																			<i class="icon-ok-sign"></i>
																		</span>
                                                </div>
                                                <div class="help-block col-xs-12 col-sm-reset inline">
                                                    填写正确！
                                                </div>
                                            </div>

                                            <div class="form-group has-info">
                                                <label for="inputInfo"
                                                       class="col-xs-12 col-sm-3 control-label no-padding-right">Input
                                                    with info</label>

                                                <div class="col-xs-12 col-sm-5">
																		<span class="block input-icon input-icon-right">
																			<input type="text" id="inputInfo"
                                                                                   class="width-100"/>
																			<i class="icon-info-sign"></i>
																		</span>
                                                </div>
                                                <div class="help-block col-xs-12 col-sm-reset inline"> Info tip help!
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="inputError2"
                                                       class="col-xs-12 col-sm-3 control-label no-padding-right">Input
                                                    with error</label>

                                                <div class="col-xs-12 col-sm-5">
																		<span class="input-icon block">
																			<input type="text" id="inputError2"
                                                                                   class="width-100"/>
																			<i class="icon-remove-sign red"></i>
																		</span>
                                                </div>
                                                <div class="help-block col-xs-12 col-sm-reset inline"> Error tip help!
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                       for="state">负责人</label>

                                                <div class="col-xs-12 col-sm-9">
                                                    <select id="state" name="state" class="select2"
                                                            data-placeholder="Click to Choose...">
                                                        <option value="">请选择</option>
                                                        <option value="AL">宋海康-shk</option>
                                                        <option value="AK">陈永军-cyj</option>
                                                        <option value="AZ">兰祥建-lxj</option>
                                                        <option value="AR">Arkansas</option>
                                                        <option value="CA">California</option>
                                                        <option value="CO">Colorado</option>
                                                        <option value="CT">Connecticut</option>
                                                        <option value="DE">Delaware</option>
                                                        <option value="FL">Florida</option>
                                                        <option value="GA">Georgia</option>
                                                        <option value="HI">Hawaii</option>
                                                        <option value="ID">Idaho</option>
                                                        <option value="IL">Illinois</option>
                                                        <option value="IN">Indiana</option>
                                                        <option value="IA">Iowa</option>
                                                        <option value="KS">Kansas</option>
                                                        <option value="KY">Kentucky</option>
                                                        <option value="LA">Louisiana</option>
                                                        <option value="ME">Maine</option>
                                                        <option value="MD">Maryland</option>
                                                        <option value="MA">Massachusetts</option>
                                                        <option value="MI">Michigan</option>
                                                        <option value="MN">Minnesota</option>
                                                        <option value="MS">Mississippi</option>
                                                        <option value="MO">Missouri</option>
                                                        <option value="MT">Montana</option>
                                                        <option value="NE">Nebraska</option>
                                                        <option value="NV">Nevada</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                       for="platform">状态</label>

                                                <div class="col-xs-12 col-sm-9">
                                                    <div class="clearfix">
                                                        <select class="input-medium" id="platform" name="platform">
                                                            <option value="">待解决</option>
                                                            <option value="linux">解决中</option>
                                                            <option value="windows">待验证</option>
                                                            <option value="mac">重新解决</option>
                                                            <option value="ios">已解决</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                       for="comment">Bug描述：</label>

                                                <div class="col-xs-12 col-sm-9">
                                                    <div class="clearfix">
                                                        <textarea rows="3" class="input-xlarge" name="comment"
                                                                  id="comment"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>


                                    </div>


                                </div>

                                <hr/>
                                <div class="row-fluid wizard-actions">

                                    <a href="javascript:void(0)" id="sData"
                                       class="fm-button ui-state-default ui-corner-all fm-button-icon-left btn btn-sm btn-primary"><i
                                            class="icon-ok"></i>提交</a>
                                    <a href="javascript:void(0)" id="cData"
                                       class="fm-button ui-state-default ui-corner-all fm-button-icon-left btn btn-sm"><i
                                            class="icon-remove"></i>重置</a>

                                </div>
                            </div>
                            <!-- /widget-main -->
                        </div>
                        <!-- /widget-body -->
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

<!-- basic scripts -->

<!--[if !IE]> -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

<!--[if !IE]> -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='<%=path%>/bootstrap/assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='<%=path%>/bootstrap/assets/js/jquery-1.10.2.min.js'>" + "<" + "/script>");
</script>
<![endif]-->

<script type="text/javascript">
    if ("ontouchend" in document) document.write("<script src='<%=path%>/bootstrap/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="<%=path%>/bootstrap/assets/js/bootstrap.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<script src="<%=path%>/bootstrap/assets/js/fuelux/fuelux.wizard.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/jquery.validate.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/additional-methods.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/bootbox.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/jquery.maskedinput.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/select2.min.js"></script>

<!-- ace scripts -->

<script src="<%=path%>/bootstrap/assets/js/ace-elements.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    jQuery(function ($) {

        $('[data-rel=tooltip]').tooltip();

        $(".select2").css('width', '200px').select2({allowClear: true})
                .on('change', function () {
                    $(this).closest('form').validate().element($(this));
                });


    })
</script>

</body>
</html>
