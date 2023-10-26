<!--#include virtual = "\Class\c_data_batch.asp" -->
<!--#include virtual="\applications\class\Class_Data_Access.asp"-->
<!--#include file="../../system/configure.asp"-->
<!--#include virtual="\applications\class\utility_ers.asp"-->
<!--#include file="../../system/utility_system.asp"-->


<!DOCTYPE html>
<html lang="en">

<!--#include file="../../Header.asp"-->

<body class="sidebar-is-expanded">

    <!--#include file = "../../navBar.asp"-->

    <div class="off-canvas-overlay"></div>
    <div class="cont-wrap">
        <div class="off-canvas">
            <div class="cl"><i class="glyphicon glyphicon-remove"></i></div>

            <div class="gw-sidebar">
                <ul class="gw-nav gw-nav-list">
                    <li>
                        <a href="/applications/<%=root_directory%>/jobcircular.asp" data-toggle="tooltip" title=""
                            data-original-title="Sign In" data-placement="right">
                            <i class="icon-file-document-outline"></i>
                            <span class="gw-menu-text">Job Circular</span>
                        </a>
                    </li>
                    <li id="noticeboardform">
                        <a href="/applications/<%=root_directory%>/admin/Notice/noticeboardform.asp" data-toggle="tooltip" title=""
                            data-original-title="Notice Board" data-placement="right">
                            <i class="icon-view-list"></i>
                            <span class="gw-menu-text">Notice Board</span>
                        </a>
                    </li>
                    <li>
                        <a href="/applications/<%=root_directory%>/login/signin.asp" data-toggle="tooltip" title=""
                            data-original-title="Sign In" data-placement="right">
                            <i class="glyphicon glyphicon-log-in"></i>
                            <span class="gw-menu-text">Sign In</span>
                        </a>
                    </li>
                </ul>
                <div class="c-header-icon js-hamburger">
                    <div class="hamburger-toggle">
                        <span class="bar-top"></span>
                        <span class="bar-mid"></span>
                        <span class="bar-bot"></span>
                    </div>
                </div>
            </div>
        </div>

        <main class="l-main">
            <div class="comleft">
                <div class="left-content">
                    <!--#include file = "../../AdvGoogleTop.asp"-->
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="bpcont">
                                    <form id="noticeForm" name="noticeForm" method="post"
                                        action="validateNoticeBoard.asp">

                                        <div class="cboxwrap">
                                            <div class="panel-group" tabindex="20" id="areaNoticeBoard">
                                                <div class="panel cp">
                                                    <div class="panel-heading">
                                                        <div class="panel-title">
                                                            <a class="accordion-toggle" id="expandNoticeBoard"
                                                                data-toggle="collapse" href="#collapseOne"> Notice Board
                                                                Form <span class="indicator icon-chevron-up"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div id="collapseOne" class="panel-collapse collapse in">
                                                        <div class="panel-body">
                                                            <div class="panel-group" tabindex="21"
                                                                id="areaNoticeBoard1">
                                                                <div class="panel scp">
                                                                    <div class="panel-heading">
                                                                        <a class="accordion-toggle"
                                                                            data-toggle="collapse" id="expandNotice1"
                                                                            href="#subNoticeCollapseOne">
                                                                            Notice-1 <span
                                                                                class="indicator icon-chevron-up"></span>
                                                                        </a>
                                                                    </div>
                                                                    <div id="subNoticeCollapseOne"
                                                                        class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class="fielmnt">
                                                                                <fieldset>
                                                                                    <legend class="sr-only"></legend>
                                                                                    <div class="uf">
                                                                                        <div class="row df">
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="serialId1">Serial
                                                                                                        No<span
                                                                                                            class="req">*</span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtSerialId_errMsg1">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="serialId1"
                                                                                                        name="serialId1"
                                                                                                        placeholder="Type the SL No."
                                                                                                        value="<%=intSerialId1%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="noticeTitle1">Notice
                                                                                                        Title<span
                                                                                                            class="req">*</span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtNoticeTitle_errMsg1">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="noticeTitle1"
                                                                                                        name="noticeTitle1"
                                                                                                        placeholder="Type the notice title"
                                                                                                        value="<%=strNoticeTitle1%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="noticeDescription1">Notice
                                                                                                        Description<span
                                                                                                            class="req">*</span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtNoticeDescription_errMsg1">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <textarea
                                                                                                        class="form-control"
                                                                                                        id="noticeDescription1"
                                                                                                        name="noticeDescription1"
                                                                                                        placeholder="Type the notice description"
                                                                                                        ><%=strNoticeDescription1%>
                                                                                                    </textarea>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="publishedDate1">Published
                                                                                                        Date<span
                                                                                                            class="req">*</span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtPublishedDate_errMsg1">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="publishedDate1"
                                                                                                        name="publishedDate1"
                                                                                                        value="<%=strPublishedDate1%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="closingDate1">Closing
                                                                                                        Date<span
                                                                                                            class="req">*</span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtClosingDate_errMsg1">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="closingDate1"
                                                                                                        name="closingDate1"
                                                                                                        value="<%=strClosingDate1%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="noticeLink1">View
                                                                                                        Details<span
                                                                                                            class="req">*</span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtNoticeLink_errMsg1">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="url"
                                                                                                        class="form-control"
                                                                                                        id="noticeLink1"
                                                                                                        name="noticeLink1"
                                                                                                        placeholder="Type the PDF URL"
                                                                                                        value="<%=strNoticeLink1%>">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </fieldset>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="panel-group" tabindex="22"
                                                                id="areaNoticeBoard2">
                                                                <div class="panel scp">
                                                                    <div class="panel-heading">
                                                                        <a class="accordion-toggle"
                                                                            data-toggle="collapse" id="expandNotice2"
                                                                            href="#subNoticeCollapseTwo">
                                                                            Notice-2 <span
                                                                                class="indicator icon-chevron-up"></span>
                                                                        </a>
                                                                    </div>
                                                                    <div id="subNoticeCollapseTwo"
                                                                        class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class="fielmnt">
                                                                                <fieldset>
                                                                                    <legend class="sr-only"></legend>
                                                                                    <div class="uf">
                                                                                        <div class="row df">
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="serialId2">Serial No
                                                                                                        <span
                                                                                                            class="req"><%If isNotice2=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtSerialId_errMsg2">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="serialId2"
                                                                                                        name="serialId2"
                                                                                                        placeholder="Type the SL No."
                                                                                                        value="<%=intSerialId2%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="noticeTitle2">Notice
                                                                                                        Title<span
                                                                                                            class="req"><%If isNotice2=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtNoticeTitle_errMsg2">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="noticeTitle2"
                                                                                                        name="noticeTitle2"
                                                                                                        placeholder="Type the notice title"
                                                                                                        value="<%=strNoticeTitle2%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="noticeDescription2">Notice
                                                                                                        Description<span
                                                                                                            class="req"><%If isNotice2=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtNoticeDescription_errMsg2">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <textarea
                                                                                                        class="form-control"
                                                                                                        id="noticeDescription2"
                                                                                                        name="noticeDescription2"
                                                                                                        placeholder="Type the notice description"
                                                                                                        ><%=strNoticeDescription2%>
                                                                                                    </textarea>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="publishedDate2">Published
                                                                                                        Date<span
                                                                                                            class="req"><%If isNotice2=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtPublishedDate_errMsg2">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="publishedDate2"
                                                                                                        name="publishedDate2"
                                                                                                        value="<%=strPublishedDate2%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="closingDate2">Closing
                                                                                                        Date<span
                                                                                                            class="req"><%If isNotice2=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtClosingDate_errMsg2">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="closingDate2"
                                                                                                        name="closingDate2"
                                                                                                        value="<%=strClosingDate2%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="noticeLink2">View
                                                                                                        Details<span
                                                                                                            class="req"><%If isNotice2=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtNoticeLink_errMsg2">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="url"
                                                                                                        class="form-control"
                                                                                                        id="noticeLink2"
                                                                                                        name="noticeLink2"
                                                                                                        placeholder="Type the PDF URL"
                                                                                                        value="<%=strNoticeLink2%>">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </fieldset>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="panel-group" tabindex="23"
                                                                id="areaNoticeBoard3">
                                                                <div class="panel scp">
                                                                    <div class="panel-heading">
                                                                        <a class="accordion-toggle"
                                                                            data-toggle="collapse" id="expandNotice3"
                                                                            href="#subNoticeCollapseThree">
                                                                            Notice-3 <span
                                                                                class="indicator icon-chevron-up"></span>
                                                                        </a>
                                                                    </div>
                                                                    <div id="subNoticeCollapseThree"
                                                                        class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class="fielmnt">
                                                                                <fieldset>
                                                                                    <legend class="sr-only"></legend>
                                                                                    <div class="uf">
                                                                                        <div class="row df">
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="serialId3">Serial
                                                                                                        No<span
                                                                                                            class="req"><%If isNotice3=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtSerialId_errMsg3">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="serialId3"
                                                                                                        name="serialId3"
                                                                                                        placeholder="Type the SL No."
                                                                                                        value="<%=intSerialId3%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="noticeTitle3">Notice
                                                                                                        Title<span
                                                                                                            class="req"><%If isNotice3=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtNoticeTitle_errMsg3">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="noticeTitle3"
                                                                                                        name="noticeTitle3"
                                                                                                        placeholder="Type the notice title"
                                                                                                        value="<%=strNoticeTitle3%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="noticeDescription3">Notice
                                                                                                        Description<span
                                                                                                            class="req"><%If isNotice3=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtNoticeDescription_errMsg3">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <textarea
                                                                                                        class="form-control"
                                                                                                        id="noticeDescription3"
                                                                                                        name="noticeDescription3"
                                                                                                        placeholder="Type the notice description"
                                                                                                        ><%=strNoticeDescription3%>
                                                                                                    </textarea>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="publishedDate3">Published
                                                                                                        Date<span
                                                                                                            class="req"><%If isNotice3=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtPublishedDate_errMsg3">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="publishedDate3"
                                                                                                        name="publishedDate3"
                                                                                                        value="<%=strPublishedDate3%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="closingDate3">Closing
                                                                                                        Date<span
                                                                                                            class="req"><%If isNotice3=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtClosingDate_errMsg3">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        id="closingDate3"
                                                                                                        name="closingDate3"
                                                                                                        value="<%=strClosingDate3%>">
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label
                                                                                                        for="noticeLink3">View
                                                                                                        Details<span
                                                                                                            class="req"><%If isNotice3=True then%>*<%End If%>
                                                                                                        </span>
                                                                                                        <div class="errmsg"
                                                                                                            id="txtNoticeLink_errMsg3">
                                                                                                        </div>
                                                                                                    </label>
                                                                                                    <input type="url"
                                                                                                        class="form-control"
                                                                                                        id="noticeLink3"
                                                                                                        name="noticeLink3"
                                                                                                        placeholder="Type the PDF URL"
                                                                                                        value="<%=strNoticeLink3%>">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </fieldset>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-center">
                                                <button type="submit" class="btn cusbtn" id="btnNoticesubmit"
                                                    onClick="return ValidateNoticeBoard();">Submit
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <br><br><br><br><br><br><br><br>
    <!--#include file = "../../AdvGoogleBottom.asp"-->
    </div>
    </div>
    <!--#include file = "../../AdvGoogleRight.asp"-->
    </main>
    </div>

    <!--#include File = "../../Footer.asp" -->


    <script type="text/javascript" src="/applications/citybank/mto/admin/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/applications/citybank/mto/admin/js/bootstrap.js"></script>
    <script type="text/javascript" src="/applications/citybank/mto/admin/js/jquery.webticker.min.js"></script>
    <script type="text/javascript" src="/applications/citybank/mto/admin/js/slick.min.js"></script>
    <script type="text/javascript" src="/applications/citybank/mto/admin/js/jquery-confirm.min.js"></script>
    <script type="text/javascript" src="/applications/citybank/mto/admin/js/custalert.js"></script>
    <script type="text/javascript" src="/applications/citybank/mto/admin/js/datepicker.min.js"></script>
    <script type="text/javascript" src="/applications/citybank/mto/admin/js/noticeboard.js"></script>
    
    <script type="text/javascript">
        var isNotice2 = "<%=isNotice2%>";
        var isNotice3 = "<%=isNotice3%>";
    </script>

    <script>
                $(".off-canvas-toggle").on("click", function (event) {
                    event.preventDefault();
                    $("body").toggleClass("off-canvas-active");
                });
                $(document).on("mouseup touchend", function (event) {
                    var offCanvas = $(".off-canvas");
                    if (!offCanvas.is(event.target) && offCanvas.has(event.target).length === 0) {
                        $("body").removeClass("off-canvas-active");
                    }
                });
                $(document).on("click", ".cl", function () {
                    $("body").removeClass("off-canvas-active");
                });
                //-------------Offcanvas------------

                var Dashboard = (function () {
                    var sidebarChangeWidth = function sidebarChangeWidth() {
                        $("body").toggleClass("sidebar-is-reduced sidebar-is-expanded");
                        $(".hamburger-toggle").toggleClass("is-opened");

                        if ($("body").hasClass("sidebar-is-expanded")) {
                            $('[data-toggle="tooltip"]').tooltip("destroy");
                        } else {
                            $('[data-toggle="tooltip"]').tooltip();
                            $(".gw-nav").find("li").find("ul:not(:visible)").slideDown();
                        }
                    };
                    return {
                        init: function init() {
                            $(".js-hamburger").on("click", sidebarChangeWidth);
                        },
                    };
                })();

                Dashboard.init();

                window.onload = (event) => {
                    $('[data-toggle="tooltip"]').tooltip();
                    if ($("body").hasClass("sidebar-is-expanded")) {
                        $('.gw-sidebar [data-toggle="tooltip"]').tooltip("destroy");
                    }
                    if ($("body").hasClass("sidebar-is-expanded")) {
                        $('.user-name[data-toggle="tooltip"]').tooltip("destroy");
                    }
                };

                $(document).ready(function () {
                    $(".gw-nav").find("li").find("ul:not(:visible)").slideDown();
                    $(".gw-nav").find("li.init-arrow-down").removeClass("init-arrow-down").addClass("init-arrow-up");
                    var nav = function () {
                        $(".gw-nav > li > a").click(function () {
                            if ($(".c-header-icon .is-opened").length == 0) {
                                var gw_nav = $(".gw-nav");
                                gw_nav.find("li").removeClass("active");
                                $(".gw-nav > li > ul > li").removeClass("active");

                                var checkElement = $(this).parent();
                                //$('.gw-nav').find('li').find('ul:visible').slideUp();
                                //$('.gw-nav').find('li.init-arrow-up').removeClass('init-arrow-up').addClass('init-arrow-down');
                                var ulDom = checkElement.find(".gw-submenu")[0];

                                if (ulDom == undefined) {
                                    checkElement.addClass("active");
                                    $(".gw-nav").find("li").find("ul:visible").slideUp();
                                    return;
                                }
                                if (ulDom.style.display != "block") {
                                    gw_nav.find("li").find("ul:visible").slideUp();
                                    gw_nav.find("li.init-arrow-up").removeClass("init-arrow-up").addClass("arrow-down");
                                    gw_nav.find("li.arrow-up").removeClass("arrow-up").addClass("arrow-down");
                                    checkElement.removeClass("init-arrow-down");
                                    checkElement.removeClass("arrow-down");
                                    checkElement.addClass("arrow-up");
                                    checkElement.addClass("active");
                                    checkElement.find("ul").slideDown(300);
                                } else {
                                    checkElement.removeClass("init-arrow-up");
                                    checkElement.removeClass("arrow-up");
                                    checkElement.removeClass("active");
                                    checkElement.addClass("arrow-down");
                                    checkElement.find("ul").slideUp(300);
                                }
                                $(".gw-nav").find("li.init-arrow-down.arrow-down").removeClass("arrow-down");
                            } else {
                                $(this).closest(".gw-nav").find("li").removeClass("active");
                                $(this).parent().parent().parents().removeClass("active");
                                $(this).parent().addClass("active");
                            }
                        });

                        $(".gw-menu-text").click(function () {
                            //alert(1)
                        });

                        $(".gw-nav > li > ul > li > a").click(function () {
                            $(this).closest(".gw-nav").find("li").removeClass("active");
                            $(this).parent().parent().parents().removeClass("active");
                            $(this).parent().addClass("active");
                        });
                    };
                    nav();
                });

                // $(window).on("load resize scroll", function(e) {
                //     //--- do something ------
                // });
                $(window).on("load resize", function (e) {
                    if ($(window).innerWidth() <= 768) {
                        if ($("body").hasClass("sidebar-is-reduced")) {
                            $("body").removeClass("sidebar-is-reduced").addClass("sidebar-is-expanded");
                        }
                    }
                });

                $(document).ready(function () {
                    $("#webTicker").webTicker({
                        duplicate: false,
                    });
                });

                $(function () {
                    $(".dropdown.user-details").on("show.bs.dropdown hide.bs.dropdown", function () {
                        $(this).find(".darow").toggleClass("icon-chevron-up");
                    });
                });

                $(document).ready(function () {
                    $(".single-item, .adaptive-height, .autoplay").slick({
                        dots: true,
                        infinite: true,
                        speed: 500,
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        adaptiveHeight: true,
                        autoplay: true,
                        autoplaySpeed: 2000,
                        fade: true,
                        cssEase: "linear",
                    });
                });

                // $('.icfmbdj').modal('show');

                // $(document).on("click", ".icfmbdj .modal-content .mbc .cusbtn.yes", function() {
                //     $('.icfmbdj .modal-content .bdjacin.oly').removeClass('hidden');
                // });

                const getNavigatorLanguage = () => (navigator.languages && navigator.languages.length ? navigator.languages[0] : navigator.userLanguage || navigator.language || navigator.browserLanguage || "en");
                $("#publishedDate1, #publishedDate2, #publishedDate3, #closingDate1, #closingDate2, #closingDate3").datepicker({
                    gainFocusOnConstruction: false,
                    theme: "bootstrap",
                    firstDayOfWeek: 6,
                    daysOfWeekDisabled: [5],
                    inputFormat: ["MM/dd/yyyy"],
                    outputFormat: "MM/dd/yyyy",
                    modal: true,
                    min: "8/12/20",
                    max: "9/10/20",
                });

                function toggleChevron(e) {
                    $(e.target).prev(".panel-heading").find(".indicator").toggleClass("icon-chevron-down icon-chevron-up");
                }
                // $('#userinfo').on('hidden.bs.collapse', toggleChevron);
                // $('#userinfo').on('shown.bs.collapse', toggleChevron);
                $(".panel-group").on("hidden.bs.collapse", toggleChevron);
                $(".panel-group").on("shown.bs.collapse", toggleChevron);
                $(".panel-group .panel-group").on("hidden.bs.collapse", toggleChevron);
                $(".panel-group .panel-group").on("shown.bs.collapse", toggleChevron);

                $(document).on("click", ".browse", function () {
                    var file = $(this).parent().parent().parent().find(".file");
                    file.trigger("click");
                });
                $(document).on("change", ".file", function () {
                    $(this)
                        .parent()
                        .find(".form-control")
                        .val(
                            $(this)
                                .val()
                                .replace(/C:\\fakepath\\/i, "")
                        );
                });

                var loadFile = function (event) {
                    var reader = new FileReader();
                    reader.onload = function () {
                        var output = document.getElementById("output");
                        output.src = reader.result;
                    };
                    reader.readAsDataURL(event.target.files[0]);
                };

                var loadFiles = function (event) {
                    var reader = new FileReader();
                    reader.onload = function () {
                        var outputt = document.getElementById("outputs");
                        outputt.src = reader.result;
                    };
                    reader.readAsDataURL(event.target.files[0]);
                };

                var loadFilec = function (event) {
                    var reader = new FileReader();
                    reader.onload = function () {
                        var outputt = document.getElementById("outputc");
                        outputt.src = reader.result;
                    };
                    reader.readAsDataURL(event.target.files[0]);
                };
            </script>

</body>

</html>