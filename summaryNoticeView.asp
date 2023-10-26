<!--#include file="../../system/configure.asp"-->
<!--#include virtual="\applications\class\sha256Md5.asp"-->
<!--#include virtual="\applications\class\Utility_ers.asp"-->
<!--#include virtual="\Class\c_data_batch.asp" -->
<!--#include virtual="\applications\class\Class_Data_Access_Admin.asp"-->

<%
Response.codepage=65001
Response.Charset="utf-8"

Set objDataErs= New c_data
objDataErs.OpenConnection ConnectionName, strErr
%>
<!--#include file="retrieveNoticeBoard.asp"-->
<%
objDataErs.CloseConnection()
set objDataErs = Nothing
%>

<!DOCTYPE html>
<html lang="en">
    
    <!--#include file="../../Header.asp"-->

    <body class="sidebar-is-expanded">

        <!--#include file = "../../navBar.asp"-->

        <div class="off-canvas-overlay"></div>
        <div class="cont-wrap">
            <div class="off-canvas">
                <div class="cl"><i class="glyphicon glyphicon-remove"></i></div>

                <!--#include file="../LeftPanelAccess.asp"-->
            </div>

            <main class="l-main">
                <div class="comleft">
                    <div class="left-content">
                        
                        <!--#include file = "../../AdvGoogleTop.asp"-->

                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="bpcont">
                                        <div class="pftitle">
                                            <h2>Notice Board Summary View</h2>
                                        </div>
                                        <div class="cboxwrap">
                                            <div class="panel-group">
                                                <div class="panel cp">
                                                    <div class="panel-heading">
                                                        <div class="panel-title">
                                                            <a class="accordion-toggle" data-toggle="collapse" href="#collapseOne"> Notice Board <span class="indicator icon-chevron-up"></span> </a>
                                                        </div>
                                                    </div>
                                                    <div id="collapseOne" class="panel-collapse collapse in">
                                                        <div class="panel-body">
                                                            <div class="edtwrap">
                                                                <button type="button" class="btn cusbtn" formtarget="_blank" onclick="parent.location='editnoticeboard.asp'">
                                                                    <span class="icon-square-edit-outline ico"></span> Edit
                                                                </button>
                                                            </div>
                                                            <div class="panel-group">
                                                                <div class="panel scp">
                                                                    <div class="panel-heading">
                                                                        <a class="accordion-toggle" data-toggle="collapse" href="#subRCollapseOne"> Notice-1 <span class="indicator icon-chevron-up"></span> </a>
                                                                    </div>
                                                                    <div id="subRCollapseOne" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class="fielmnt">
                                                                                <fieldset>
                                                                                    <legend class="sr-only"></legend>
                                                                                    <div class="uf">
                                                                                        <div class="row df">
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="serialId1">
                                                                                                        Serial No
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=intSerialId1%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="noticeTitle1">
                                                                                                        Notice Title
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strNoticeTitle1%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="noticeDescription1">
                                                                                                        Notice Description
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strNoticeDescription1%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="publishedDate1">
                                                                                                        Published Date
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strPublishedDate1%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="closingDate1">
                                                                                                        Closing Date
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strClosingDate1%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="noticeLink1">
                                                                                                        Notice Link
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strNoticeLink1%></div>
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
                                                            <div class="panel-group">
                                                                <div class="panel scp">
                                                                    <div class="panel-heading">
                                                                        <a class="accordion-toggle" data-toggle="collapse" href="#subRCollapseTwo"> Notice-2 <span class="indicator icon-chevron-down"></span> </a>
                                                                    </div>
                                                                    <div id="subRCollapseTwo" class="panel-collapse collapse">
                                                                        <div class="panel-body">
                                                                            <div class="fielmnt">
                                                                                <fieldset>
                                                                                    <legend class="sr-only"></legend>
                                                                                    <div class="uf">
                                                                                        <div class="row df">
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="serialId2">
                                                                                                        Serial No
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=intSerialId2%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="noticeTitle2">
                                                                                                        Notice Title
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strNoticeTitle2%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="noticeDescription2">
                                                                                                        Notice Description
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strNoticeDescription2%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="publishedDate2">
                                                                                                        Published Date
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strPublishedDate2%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="closingDate2">
                                                                                                        Closing Date
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strClosingDate2%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="noticeLink2">
                                                                                                        Notice Link
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strNoticeLink2%></div>
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
                                                            <div class="panel-group">
                                                                <div class="panel scp">
                                                                    <div class="panel-heading">
                                                                        <a class="accordion-toggle" data-toggle="collapse" href="#subRCollapseThree"> Notice-3 <span class="indicator icon-chevron-down"></span> </a>
                                                                    </div>
                                                                    <div id="subRCollapseThree" class="panel-collapse collapse">
                                                                        <div class="panel-body">
                                                                            <div class="fielmnt">
                                                                                <fieldset>
                                                                                    <legend class="sr-only"></legend>
                                                                                    <div class="uf">
                                                                                        <div class="row df">
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="serialId3">
                                                                                                        Serial No
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=intSerialId3%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="noticeTitle3">
                                                                                                        Notice Title
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strNoticeTitle3%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="noticeDescription3">
                                                                                                        Notice Description
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strNoticeDescription3%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="publishedDate3">
                                                                                                        Published Date
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strPublishedDate3%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="closingDate3">
                                                                                                        Closing Date
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strClosingDate3%></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-4">
                                                                                                <div class="form-group">
                                                                                                    <label for="noticeLink3">
                                                                                                        Notice Link
                                                                                                        <span class="req"></span>
                                                                                                    </label>
                                                                                                    <div class="svrtxt"><%=strNoticeLink3%></div>
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
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--#include file = "../../AdvGoogleBottom.asp"-->
                    </div>
                </div>
                    <!--#include file = "../../AdvGoogleRight.asp"-->
            </main>
        </div>

        <!--#include file = "../../Footer.asp"-->

        <script type="text/javascript" src="/applications/citybank/mto/admin/js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="/applications/citybank/mto/admin/js/bootstrap.js"></script>
        <script type="text/javascript" src="/applications/citybank/mto/admin/js/jquery.webticker.min.js"></script>
        <script type="text/javascript" src="/applications/citybank/mto/admin/js/slick.min.js"></script>
        <script type="text/javascript" src="/applications/citybank/mto/admin/js/jquery-confirm.min.js"></script>
        <script type="text/javascript" src="/applications/citybank/mto/admin/js/custalert.js"></script>
        <script type="text/javascript" src="/applications/citybank/mto/admin/js/datepicker.min.js"></script>
        <script type="text/javascript" src="/applications/citybank/mto/admin/js/noticeboard.js"></script>
        
        <script>
                const editNoticeF = document.getElementById("edit_notice_form");
                editNoticeF.setAttribute("class", "active");
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
            $("#date, #rpdate, #rpdateh, #rpdateg, #rpdatepg").datepicker({
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
