<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>相册 - Bootstrap后台管理系统模版Ace下载</title>
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

    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/colorbox.css"/>

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

<jsp:include page="/bootstrap/view/home_navbar.jsp"/>

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

<jsp:include page="/bootstrap/view/home_navigation.jsp"/>

<div class="row">
<div class="col-xs-12">
<!-- PAGE CONTENT BEGINS -->

<div class="row-fluid">
<ul class="ace-thumbnails">
<li>
    <a href="<%=path%>/bootstrap/assets/images/gallery/image-1.jpg" title="Photo Title" data-rel="colorbox">
        <img alt="150x150" src="<%=path%>/bootstrap/assets/images/gallery/thumb-1.jpg"/>

        <div class="tags">
													<span class="label-holder">
														<span class="label label-info">breakfast</span>
													</span>

													<span class="label-holder">
														<span class="label label-danger">fruits</span>
													</span>

													<span class="label-holder">
														<span class="label label-success">toast</span>
													</span>

													<span class="label-holder">
														<span class="label label-warning arrowed-in">diet</span>
													</span>
        </div>
    </a>

    <div class="tools">
        <a href="#">
            <i class="icon-link"></i>
        </a>

        <a href="#">
            <i class="icon-paper-clip"></i>
        </a>

        <a href="#">
            <i class="icon-pencil"></i>
        </a>

        <a href="#">
            <i class="icon-remove red"></i>
        </a>
    </div>
</li>

<li>
    <a href="<%=path%>/bootstrap/assets/images/gallery/image-2.jpg" data-rel="colorbox">
        <img alt="150x150" src="<%=path%>/bootstrap/assets/images/gallery/thumb-2.jpg"/>

        <div class="text">
            <div class="inner">Sample Caption on Hover</div>
        </div>
    </a>
</li>

<li>
    <a href="<%=path%>/bootstrap/assets/images/gallery/image-3.jpg" data-rel="colorbox">
        <img alt="150x150" src="<%=path%>/bootstrap/assets/images/gallery/thumb-3.jpg"/>

        <div class="text">
            <div class="inner">Sample Caption on Hover</div>
        </div>
    </a>

    <div class="tools tools-bottom">
        <a href="#">
            <i class="icon-link"></i>
        </a>

        <a href="#">
            <i class="icon-paper-clip"></i>
        </a>

        <a href="#">
            <i class="icon-pencil"></i>
        </a>

        <a href="#">
            <i class="icon-remove red"></i>
        </a>
    </div>
</li>

<li>
    <a href="<%=path%>/bootstrap/assets/images/gallery/image-4.jpg" data-rel="colorbox">
        <img alt="150x150" src="<%=path%>/bootstrap/assets/images/gallery/thumb-4.jpg"/>

        <div class="tags">
													<span class="label-holder">
														<span class="label label-info arrowed">fountain</span>
													</span>

													<span class="label-holder">
														<span class="label label-danger">recreation</span>
													</span>
        </div>
    </a>

    <div class="tools tools-top">
        <a href="#">
            <i class="icon-link"></i>
        </a>

        <a href="#">
            <i class="icon-paper-clip"></i>
        </a>

        <a href="#">
            <i class="icon-pencil"></i>
        </a>

        <a href="#">
            <i class="icon-remove red"></i>
        </a>
    </div>
</li>

<li>
    <div>
        <img alt="150x150" src="<%=path%>/bootstrap/assets/images/gallery/thumb-5.jpg"/>

        <div class="text">
            <div class="inner">
                <span>Some Title!</span>

                <br/>
                <a href="<%=path%>/bootstrap/assets/images/gallery/image-5.jpg" data-rel="colorbox">
                    <i class="icon-zoom-in"></i>
                </a>

                <a href="#">
                    <i class="icon-user"></i>
                </a>

                <a href="#">
                    <i class="icon-share-alt"></i>
                </a>
            </div>
        </div>
    </div>
</li>

<li>
    <a href="<%=path%>/bootstrap/assets/images/gallery/image-6.jpg" data-rel="colorbox">
        <img alt="150x150" src="<%=path%>/bootstrap/assets/images/gallery/thumb-6.jpg"/>
    </a>

    <div class="tools tools-right">
        <a href="#">
            <i class="icon-link"></i>
        </a>

        <a href="#">
            <i class="icon-paper-clip"></i>
        </a>

        <a href="#">
            <i class="icon-pencil"></i>
        </a>

        <a href="#">
            <i class="icon-remove red"></i>
        </a>
    </div>
</li>

<li>
    <a href="<%=path%>/bootstrap/assets/images/gallery/image-1.jpg" data-rel="colorbox">
        <img alt="150x150" src="<%=path%>/bootstrap/assets/images/gallery/thumb-1.jpg"/>
    </a>

    <div class="tools">
        <a href="#">
            <i class="icon-link"></i>
        </a>

        <a href="#">
            <i class="icon-paper-clip"></i>
        </a>

        <a href="#">
            <i class="icon-pencil"></i>
        </a>

        <a href="#">
            <i class="icon-remove red"></i>
        </a>
    </div>
</li>

<li>
    <a href="<%=path%>/bootstrap/assets/images/gallery/image-2.jpg" data-rel="colorbox">
        <img alt="150x150" src="<%=path%>/bootstrap/assets/images/gallery/thumb-2.jpg"/>
    </a>

    <div class="tools tools-top">
        <a href="#">
            <i class="icon-link"></i>
        </a>

        <a href="#">
            <i class="icon-paper-clip"></i>
        </a>

        <a href="#">
            <i class="icon-pencil"></i>
        </a>

        <a href="#">
            <i class="icon-remove red"></i>
        </a>
    </div>
</li>
</ul>
</div>
<!-- PAGE CONTENT ENDS -->
</div>
<!-- /.col -->
</div>
<!-- /.row -->
</div>
<!-- /.page-content -->
</div>
<!-- /.main-content -->

<jsp:include page="/bootstrap/view/home_settings.jsp"/>


</div>
<!-- /.main-container-inner -->

<jsp:include page="/bootstrap/view/home_scroll_top.jsp"/>

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
    window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>" + "<" + "/script>");
</script>
<![endif]-->

<script type="text/javascript">
    if ("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="<%=path%>/bootstrap/assets/js/bootstrap.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<script src="<%=path%>/bootstrap/assets/js/jquery.colorbox-min.js"></script>

<!-- ace scripts -->

<script src="<%=path%>/bootstrap/assets/js/ace-elements.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    jQuery(function ($) {
        var colorbox_params = {
            reposition: true,
            scalePhotos: true,
            scrolling: false,
            previous: '<i class="icon-arrow-left"></i>',
            next: '<i class="icon-arrow-right"></i>',
            close: '&times;',
            current: '{current} of {total}',
            maxWidth: '100%',
            maxHeight: '100%',
            onOpen: function () {
                document.body.style.overflow = 'hidden';
            },
            onClosed: function () {
                document.body.style.overflow = 'auto';
            },
            onComplete: function () {
                $.colorbox.resize();
            }
        };

        $('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
        $("#cboxLoadingGraphic").append("<i class='icon-spinner orange'></i>");//let's add a custom loading icon

        /**$(window).on('resize.colorbox', function() {
		try {
			//this function has been changed in recent versions of colorbox, so it won't work
			$.fn.colorbox.load();//to redraw the current frame
		} catch(e){}
	});*/
    })
</script>
<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>
