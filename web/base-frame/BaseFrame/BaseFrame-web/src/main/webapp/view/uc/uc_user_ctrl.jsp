<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>jquery网格插件 - Bootstrap后台管理系统模版Ace下载</title>

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

    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/jquery-ui-1.10.3.full.min.css"/>
    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/datepicker.css"/>
    <link rel="stylesheet" href="<%=path%>/bootstrap/assets/css/ui.jqgrid.css"/>

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
<jsp:include page="/view/home/home_navigation.jsp"/>


<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->

        <div class="alert alert-info">
            <i class="icon-hand-right"></i>

            Please note that demo server is not configured to save the changes, therefore you may get an error message.
            <button class="close" data-dismiss="alert">
                <i class="icon-remove"></i>
            </button>
        </div>

        <table id="grid-table"></table>

        <div id="grid-pager"></div>

        <script type="text/javascript">
            var $path_base = "/";//this will be used in gritter alerts containing images
        </script>

        <!-- PAGE CONTENT ENDS -->
    </div>
    <!-- /.col -->
</div>
<!-- /.row -->
</div><!-- /.page-content -->
</div><!-- /.main-content -->

<jsp:include page="/view/home/home_settings.jsp"/>

</div>
<!-- /.main-container-inner -->

<jsp:include page="/view/home/home_scroll_top.jsp"/>

</div><!-- /.main-container -->

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

<script src="<%=path%>/bootstrap/assets/js/date-time/bootstrap-datepicker.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/jqGrid/jquery.jqGrid.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/jqGrid/i18n/grid.locale-cn.js"></script>

<!-- ace scripts -->

<script src="<%=path%>/bootstrap/assets/js/ace-elements.min.js"></script>
<script src="<%=path%>/bootstrap/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
var grid_data =
        [
            {id: "1", name: "Desktop Computer", note: "note", sex: "Yes", ship: "FedEx", sdate: "2007-12-03"}
//            {id: "2", name: "Laptop", note: "Long text ", stock: "Yes", ship: "InTime", sdate: "2007-12-03"},
//            {id: "3", name: "LCD Monitor", note: "note3", stock: "Yes", ship: "TNT", sdate: "2007-12-03"},
//            {id: "4", name: "Speakers", note: "note", stock: "No", ship: "ARAMEX", sdate: "2007-12-03"},
//            {id: "5", name: "Laser Printer", note: "note2", stock: "Yes", ship: "FedEx", sdate: "2007-12-03"},
//            {id: "6", name: "Play Station", note: "note3", stock: "No", ship: "FedEx", sdate: "2007-12-03"},
//            {id: "7", name: "Mobile Telephone", note: "note", stock: "Yes", ship: "ARAMEX", sdate: "2007-12-03"},
//            {id: "8", name: "Server", note: "note2", stock: "Yes", ship: "TNT", sdate: "2007-12-03"},
//            {id: "9", name: "Matrix Printer", note: "note3", stock: "No", ship: "FedEx", sdate: "2007-12-03"},
//            {id: "10", name: "Desktop Computer", note: "note", stock: "Yes", ship: "FedEx", sdate: "2007-12-03"},
//            {id: "11", name: "Laptop", note: "Long text ", stock: "Yes", ship: "InTime", sdate: "2007-12-03"},
//            {id: "12", name: "LCD Monitor", note: "note3", stock: "Yes", ship: "TNT", sdate: "2007-12-03"},
//            {id: "13", name: "Speakers", note: "note", stock: "No", ship: "ARAMEX", sdate: "2007-12-03"},
//            {id: "14", name: "Laser Printer", note: "note2", stock: "Yes", ship: "FedEx", sdate: "2007-12-03"},
//            {id: "15", name: "Play Station", note: "note3", stock: "No", ship: "FedEx", sdate: "2007-12-03"},
//            {id: "16", name: "Mobile Telephone", note: "note", stock: "Yes", ship: "ARAMEX", sdate: "2007-12-03"},
//            {id: "17", name: "Server", note: "note2", stock: "Yes", ship: "TNT", sdate: "2007-12-03"},
//            {id: "18", name: "Matrix Printer", note: "note3", stock: "No", ship: "FedEx", sdate: "2007-12-03"},
//            {id: "19", name: "Matrix Printer", note: "note3", stock: "No", ship: "FedEx", sdate: "2007-12-03"},
//            {id: "20", name: "Desktop Computer", note: "note", stock: "Yes", ship: "FedEx", sdate: "2007-12-03"},
//            {id: "21", name: "Laptop", note: "Long text ", stock: "Yes", ship: "InTime", sdate: "2007-12-03"},
//            {id: "22", name: "LCD Monitor", note: "note3", stock: "Yes", ship: "TNT", sdate: "2007-12-03"},
//            {id: "23", name: "Speakers", note: "note", stock: "No", ship: "ARAMEX", sdate: "2007-12-03"}
        ];

jQuery(function ($) {
    var grid_selector = "#grid-table";
    var pager_selector = "#grid-pager";

    jQuery(grid_selector).jqGrid({
        //direction: "rtl",

        mtype:"POST",//请求的类型：(“POST” or “GET”)	默认GET
        datatype: "json",//表格可以被接受的数据类型：xml，xmlstring，json，local，function
        jsonReader : {root:"dataRows",id: "userId"},//root:设置记录集的属性名称，id:设置主键的属性名称
        editurl:"<%=path%>/uc/editUserInfo.do",//定义对form编辑时的url（增删改的时候使用）
        url:"<%=path%>/uc/getUserList.do",
        rowNum: 10,
        rowList: [10, 20, 30],
        pager: pager_selector,

        altRows: true,
        caption: "用户信息维护",
        viewrecords: true,
        height: 250,
        colNames: ['操作', 'ID', '用户名', '密码', '邮箱', '手机号', '生日', '性别', '用户状态', '注册日期'],
        colModel: [
            {name: 'myac', index: '', width: 80, fixed: true, sortable: false, resize: false,
                formatter: 'actions',
                formatoptions: {
                    keys: true,

                    delOptions: {recreateForm: true, beforeShowForm: beforeDeleteCallback},
                    //editformbutton:true, editOptions:{recreateForm: true, beforeShowForm:beforeEditCallback}
                }
            },
            {name: 'userId', index: 'userId', hidden: true},
            {name: 'username', index: 'username', width: 100, editable: true, editoptions: {size: "20", maxlength: "30"}},
            {name: 'password', index: 'password', width: 100, editable: true, editoptions: {size: "20", maxlength: "30"}},
            {name: 'email', index: 'email', width: 100, editable: true, editoptions: {size: "20", maxlength: "30"}},
            {name: 'mobilePhone', index: 'mobilePhone', width: 100, editable: true, editoptions: {size: "20", maxlength: "30"}},
            {name: 'brithday', index: 'brithday', width: 90, editable: true, sorttype: "date", unformat: pickDate},
            {name: 'sex', index: 'sex', width: 70, editable: true, edittype: "checkbox", editoptions: {value: "男:女"}, unformat: aceSwitch},
            {name: 'state', index: 'state', width: 90, editable: true, edittype: "select", editoptions: {value: "NORMOL:正常;OFF:禁用;TN:冻结;AR:无效"}},
            {name: 'createTime', index: 'createTime', width: 90, editable: false, sorttype: "date", unformat: pickDate}
        ],


        //toppager: true,

        multiselect: true,
        //multikey: "ctrlKey",
        multiboxonly: true,

        loadComplete: function () {
            var table = this;
            setTimeout(function () {
                styleCheckbox(table);

                updateActionIcons(table);
                updatePagerIcons(table);
                enableTooltips(table);
            }, 0);
        },


        autowidth: true

    });

    //enable search/filter toolbar
    //jQuery(grid_selector).jqGrid('filterToolbar',{defaultSearch:true,stringResult:true})

    //switch element when editing inline
    function aceSwitch(cellvalue, options, cell) {
        setTimeout(function () {
            $(cell).find('input[type=checkbox]')
                    .wrap('<label class="inline" />')
                    .addClass('ace ace-switch ace-switch-5')
                    .after('<span class="lbl"></span>');
        }, 0);
    }

    //enable datepicker
    function pickDate(cellvalue, options, cell) {
        setTimeout(function () {
            $(cell).find('input[type=text]')
                    .datepicker({format: 'yyyy-mm-dd', autoclose: true});
        }, 0);
    }


    //navButtons
    jQuery(grid_selector).jqGrid('navGrid', pager_selector,
            { 	//navbar options
                edit: true,
                editicon: 'icon-pencil blue',
                add: true,
                addicon: 'icon-plus-sign purple',
                del: true,
                delicon: 'icon-trash red',
                search: true,
                searchicon: 'icon-search orange',
                refresh: true,
                refreshicon: 'icon-refresh green',
                view: true,
                viewicon: 'icon-zoom-in grey'
            },
            {
                //edit record form
                //closeAfterEdit: true,
                recreateForm: true,
                beforeShowForm: function (e) {
                    var form = $(e[0]);
                    form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                    style_edit_form(form);
                }
            },
            {
                //new record form
                closeAfterAdd: true,
                recreateForm: true,
                viewPagerButtons: false,
                beforeShowForm: function (e) {
                    var form = $(e[0]);
                    form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                    style_edit_form(form);
                }
            },
            {
                //delete record form
                recreateForm: true,
                beforeShowForm: function (e) {
                    var form = $(e[0]);
                    if (form.data('styled')) return false;

                    form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                    style_delete_form(form);

                    form.data('styled', true);
                },
                onClick: function (e) {
                    alert(1);
                }
            },
            {
                //search form
                recreateForm: true,
                afterShowSearch: function (e) {
                    var form = $(e[0]);
                    form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
                    style_search_form(form);
                },
                afterRedraw: function () {
                    style_search_filters($(this));
                },
                multipleSearch: true,
                /**
                 multipleGroup:true,
                 showQuery: true
                 */
            },
            {
                //view record form
                recreateForm: true,
                beforeShowForm: function (e) {
                    var form = $(e[0]);
                    form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
                }
            }
    )


    function style_edit_form(form) {
        //enable datepicker on "brithday" field and switches for "sex" field
        form.find('input[name=brithday]').datepicker({format: 'yyyy-mm-dd', autoclose: true})
                .end().find('input[name=sex]')
                .addClass('ace ace-switch ace-switch-5').wrap('<label class="inline" />').after('<span class="lbl"></span>');

        //update buttons classes
        var buttons = form.next().find('.EditButton .fm-button');
        buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
        buttons.eq(0).addClass('btn-primary').prepend('<i class="icon-ok"></i>');
        buttons.eq(1).prepend('<i class="icon-remove"></i>')

        buttons = form.next().find('.navButton a');
        buttons.find('.ui-icon').remove();
        buttons.eq(0).append('<i class="icon-chevron-left"></i>');
        buttons.eq(1).append('<i class="icon-chevron-right"></i>');
    }

    function style_delete_form(form) {
        var buttons = form.next().find('.EditButton .fm-button');
        buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
        buttons.eq(0).addClass('btn-danger').prepend('<i class="icon-trash"></i>');
        buttons.eq(1).prepend('<i class="icon-remove"></i>')
    }

    function style_search_filters(form) {
        form.find('.delete-rule').val('X');
        form.find('.add-rule').addClass('btn btn-xs btn-primary');
        form.find('.add-group').addClass('btn btn-xs btn-success');
        form.find('.delete-group').addClass('btn btn-xs btn-danger');
    }

    function style_search_form(form) {
        var dialog = form.closest('.ui-jqdialog');
        var buttons = dialog.find('.EditTable')
        buttons.find('.EditButton a[id*="_reset"]').addClass('btn btn-sm btn-info').find('.ui-icon').attr('class', 'icon-retweet');
        buttons.find('.EditButton a[id*="_query"]').addClass('btn btn-sm btn-inverse').find('.ui-icon').attr('class', 'icon-comment-alt');
        buttons.find('.EditButton a[id*="_search"]').addClass('btn btn-sm btn-purple').find('.ui-icon').attr('class', 'icon-search');
    }

    function beforeDeleteCallback(e) {
        var form = $(e[0]);
        if (form.data('styled')) return false;

        form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
        style_delete_form(form);

        form.data('styled', true);
    }

    function beforeEditCallback(e) {
        var form = $(e[0]);
        form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
        style_edit_form(form);
    }


    //it causes some flicker when reloading or navigating grid
    //it may be possible to have some custom formatter to do this as the grid is being created to prevent this
    //or go back to default browser checkbox styles for the grid
    function styleCheckbox(table) {
        /**
         $(table).find('input:checkbox').addClass('ace')
         .wrap('<label />')
         .after('<span class="lbl align-top" />')


         $('.ui-jqgrid-labels th[id*="_cb"]:first-child')
         .find('input.cbox[type=checkbox]').addClass('ace')
         .wrap('<label />').after('<span class="lbl align-top" />');
         */
    }


    //unlike navButtons icons, action icons in rows seem to be hard-coded
    //you can change them like this in here if you want
    function updateActionIcons(table) {
        /**
         var replacement =
         {
             'ui-icon-pencil' : 'icon-pencil blue',
             'ui-icon-trash' : 'icon-trash red',
             'ui-icon-disk' : 'icon-ok green',
             'ui-icon-cancel' : 'icon-remove red'
         };
         $(table).find('.ui-pg-div span.ui-icon').each(function(){
						var icon = $(this);
						var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
						if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
					})
         */
    }

    //replace icons with FontAwesome icons like above
    function updatePagerIcons(table) {
        var replacement =
        {
            'ui-icon-seek-first': 'icon-double-angle-left bigger-140',
            'ui-icon-seek-prev': 'icon-angle-left bigger-140',
            'ui-icon-seek-next': 'icon-angle-right bigger-140',
            'ui-icon-seek-end': 'icon-double-angle-right bigger-140'
        };
        $('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function () {
            var icon = $(this);
            var $class = $.trim(icon.attr('class').replace('ui-icon', ''));

            if ($class in replacement) icon.attr('class', 'ui-icon ' + replacement[$class]);
        })
    }

    function enableTooltips(table) {
        $('.navtable .ui-pg-button').tooltip({container: 'body'});
        $(table).find('.ui-pg-div').tooltip({container: 'body'});
    }

    //var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');


});
</script>

</body>
</html>
