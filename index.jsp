<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <head>
        <title>Finance-Management-System</title>    
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link href="../files/bower_components/bootstrap-daterangepicker/css/daterangepicker.css" rel="stylesheet" type="text/css"/>
        <!-- Favicon icon -->

        <!-- Google font-->   

        <!-- Required Fremwork -->
        <link rel="stylesheet" type="text/css" href="files/bower_components/bootstrap/css/bootstrap.min.css">

        <!-- waves.css -->

        <!-- feather icon -->
        <link rel="stylesheet" type="text/css" href="files/assets/icon/feather/css/feather.css">
        <!-- font-awesome-n -->
        <link rel="stylesheet" type="text/css" href="files/assets/css/font-awesome-n.min.css">

        <!-- Style.css -->
        <link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="files/assets/css/widget.css">
        <!-- Notification.css -->
        <link rel="stylesheet" type="text/css" href="files/assets/pages/notification/notification.css">
        <!-- Animate.css -->
        <link rel="stylesheet" type="text/css" href="files/bower_components/animate.css/css/animate.css">


        <!-- ico font -->
        <link rel="stylesheet" type="text/css" href="files/assets/icon/icofont/css/icofont.css">
        <!-- font awesome -->
        <link rel="stylesheet" type="text/css" href="files/assets/icon/font-awesome/css/font-awesome.min.css">
        <!-- Switch component css -->
        <link rel="stylesheet" type="text/css" href="files/bower_components/switchery/css/switchery.min.css">
        <!-- Tags css -->

        <!-- Style.css -->
        <link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="files/assets/css/pages.css">
        <!-- Data Table Css -->

        <!-- animation nifty modal window effects css -->


        <style>
            table  {
                font-family: aroma;
                font-size: 12px;
            }
            table .th {
                font-weight: bold;
            }
            table .icon{
                size: 12px !important;
            }

            #overlay{
                position:fixed;
                z-index:99999;
                top:0;
                left:0;
                bottom:0;
                right:0;
                background: #263544;
                transition: 1s 0.4s;
            }
            #progress{
                height:1px;
                background:#fff;
                position:absolute;
                width:0;
                top:50%;
            }
            #progstat{
                font-size:0.7em;
                letter-spacing: 3px;
                position:absolute;
                top:50%;
                margin-top:-40px;
                width:100%;
                text-align:center;
                color:#fff;
            }
        </style>
    </head>

    <body themebg-pattern="theme1">
        <!-- [ Pre-loader ] start -->
        <div class="loader-bg">
            <div class="loader-bar"></div>
        </div>
        <!-- [ Pre-loader ] end -->
        <div id="pcoded" class="pcoded">

            <div class="pcoded-container navbar-wrapper">
                <!-- [ Header ] start -->
                <jsp:include page="header.jsp"/>         

                <!-- [ chat messages dropdown ] start -->

                <!-- [ chat message ] end -->

                <div class="pcoded-main-container">
                    <div class="pcoded-wrapper">
                        <!-- [ navigation menu side_bar ] start -->
                        <jsp:include page="side_bar.jsp"/>
                        <!-- [ navigation menu ] end -->

                        <!--main Content Page -->
                        <%
                            if ("new_chart_of_account".equals(request.getParameter("request"))) {
                        %>  
                        <jsp:include page="views/new_chart_of_account.jsp"/> 
                        <%
                        } else if ("account_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/account_list.jsp"/>
                        <%                     } else if ("journal_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/journal_list.jsp"/>
                        <%                    } else if ("new_journal".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_journal.jsp"/>
                        <%                    } else if ("new_staff".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_staff.jsp"/>
                        <%                    } else if ("staff_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/staff_list.jsp"/>
                        <%                     } else if ("new_bank".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_bank.jsp"/>
                        <%                     } else if ("bank_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/bank_list.jsp"/>
                        <%                    } else if ("new_petty_cash".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_petty_cash.jsp"/>
                        <%                    } else if ("new_ecash".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_ecash.jsp"/>
                        <%                     } else if ("petty_cash_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/petty_cash_list.jsp"/>
                        <%                     } else if ("ecash_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/ecash_list.jsp"/>
                        <%                     } else if ("new_supplier".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_supplier.jsp"/>
                        <%                     } else if ("supplier_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/supplier_list.jsp"/>
                        <%                    } else if ("new_customer".equals(request.getParameter("request"))) {
                        %>
                        <jsp:include page="views/new_customer.jsp"/>
                        <%
                        } else if ("customer_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/customer_list.jsp"/>
                        <%                     } else if ("new_branch".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_branch.jsp"/>
                        <%                     } else if ("branch_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/branch_list.jsp"/>
                        <%                     } else if ("user_category".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/user_category.jsp"/>
                        <%                    } else if ("user_unit".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/user_unit.jsp"/>
                        <%                    } else if ("finance_book".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/finance_book.jsp"/>
                        <%                     } else if ("finance_book_section".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/finance_book.jsp"/>
                        <%                     } else if ("fiscal_year".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/fiscal_year.jsp"/>
                        <%                    } else if ("finance_main_account".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/main_account.jsp"/>
                        <%                     } else if ("finance_book_sub_section".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/finance_book_sub_section.jsp"/>
                        <%                    } else if ("income_statement".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/report_income_statement.jsp"/>
                        <%                    } else if ("report_chart_of_account".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/report_chart_of_account.jsp"/>
                        <%                    } else if ("report_journal_entries".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/report_journal_entries.jsp"/>
                        <%                    
                             } else if ("balance_sheet".equals(request.getParameter("request"))) {
                        %>
                        <jsp:include page="views/report_balance_sheet.jsp"/>
                        <%               
                        
                            } else {
                        %>
                        <jsp:include page="views/home.jsp"/>
                        <%
                            }
                        %>

                        <!--main Content Page End-->

                        <!-- [ style Customizer ] start -->
                        <div id="styleSelector">
                        </div>
                        <!-- [ style Customizer ] end -->
                    </div>
                </div>
            </div>
        
        </div>
      <jsp:include page="footer.jsp"/>

        <!-- Switch component js -->
        <script type="text/javascript" src="files/bower_components/switchery/js/switchery.min.js"></script>
        <!-- Tags js -->

        <script src="cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.10.4/typeahead.bundle.min.js"></script>
        <!-- Max-length js -->
        <script type="text/javascript" src="files/bower_components/bootstrap-maxlength/js/bootstrap-maxlength.js"></script>
        <!-- Custom js -->
        <script type="text/javascript" src="files/assets/pages/advance-elements/swithces.js"></script>
        <!-- data-table js -->

        <!-- sweet alert js -->
        <script type="text/javascript" src="files/bower_components/sweetalert/js/sweetalert.min.js"></script>
        <script type="text/javascript" src="files/assets/js/modal.js"></script>

        <!-- modalEffects js nifty modal window effects -->

        <script src="../files/bower_components/moment/js/moment.min.js" type="text/javascript"></script>
        <script src="../files/bower_components/bootstrap-daterangepicker/js/daterangepicker.js" type="text/javascript"></script>

        <!-- Required Jquery -->
        <script data-cfasync="false" src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script type="text/javascript" src="files/bower_components/jquery/js/jquery.min.js"></script>
        <script type="text/javascript" src="files/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="files/bower_components/popper.js/js/popper.min.js"></script>
        <script type="text/javascript" src="files/bower_components/bootstrap/js/bootstrap.min.js"></script>

        <!-- waves js -->

        <!-- jquery slimscroll js -->


        <!-- Custom js -->
        <script type="text/javascript" src="files/assets/js/pcoded.min.js"></script>
        <script type="text/javascript" src="files/assets/js/vertical/vertical-layout.min.js"></script>
        <script type="text/javascript" src="files/assets/pages/dashboard/custom-dashboard.min.js"></script>
        <script type="text/javascript" src="files/assets/js/script.min.js"></script>
        <script type="text/javascript" src="files/assets/js/script.js"></script>
        <script type="text/javascript" src="files/assets/pages/data-table/js/data-table-custom.js"></script> 
        <script type="text/javascript" src="files/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>

        <!-- notification js -->
        <script type="text/javascript" src="files/assets/js/bootstrap-growl.min.js"></script> 
        <script>
            ;
            (function () {
                function id(v) {
                    return document.getElementById(v);
                }
                function loadbar() {
                    var ovrl = id("overlay"),
                            prog = id("progress"),
                            stat = id("progstat"),
                            img = document.images,
                            c = 0;
                    tot = img.length;

                    function imgLoaded() {
                        c += 1;
                        var perc = ((100 / tot * c) << 0) + "%";
                        prog.style.width = perc;
                        stat.innerHTML = "Loading " + perc;
                        if (c === tot)
                            return doneLoading();
                    }
                    function doneLoading() {
                        ovrl.style.opacity = 0;
                        setTimeout(function () {
                            ovrl.style.display = "none";
                        }, 1200);
                    }
                    for (var i = 0; i < tot; i++) {
                        var tImg = new Image();
                        tImg.onload = imgLoaded;
                        tImg.onerror = imgLoaded;
                        tImg.src = img[i].src;
                    }
                }
                document.addEventListener('DOMContentLoaded', loadbar, false);
            }());
        </script>

    </body>


</html>
