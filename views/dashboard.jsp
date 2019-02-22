<%@page import="java.time.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.Year"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="core.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
db con= new db();
con.connection();
Connection conn = con.getcon();

Map Cond_getAssets = new HashMap();
Map Data_getAssets = new HashMap();
Map Cond_getMainAccount = new HashMap();
Map Data_getMainAccount = new HashMap();
Map Data_getAmountSubAcc = new HashMap();
Map Cond_getAmountSubAcc = new HashMap();
Map Data_getAmountSubSubAcc = new HashMap();
Map Cond_getAmountSubSubAcc = new HashMap();


Map Cond_getLiabilities = new HashMap();
Map Data_getLiabilities = new HashMap();
Map Cond_getMainAccountL = new HashMap();
Map Data_getMainAccountL = new HashMap();
Map Data_getAmountSubAccL = new HashMap();
Map Cond_getAmountSubAccL = new HashMap();
Map Data_getAmountSubSubAccL = new HashMap();
Map Cond_getAmountSubSubAccL = new HashMap();

Map Cond_get_payable = new HashMap();




String tb_finance_book_section = "finance_book_section";
String tb_finance_book_section_main_account = "finance_book_section_main_account";
String tb_finance_sub_account ="finance_sub_account";
String tb_finance_sub_sub_account = "finance_sub_sub_account";

    
try
{
%>

                   <div class="pcoded-content">
                        <!-- [ breadcrumb ] start -->
                        
                          

                        
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <div class="page-body">
                                        <!-- [ page content ] start -->
                                        <div class="row" style="height: 50%;">
                                            <!-- Project statustic start -->
                                             <div class="col-xl-12">
                                                 <div class="card proj-progress-card" style="margin-top: 15px;">
                                                     <div class="card-block">
                                                         <div class="row">

                                                             <div class="col-xl-6 col-md-6">
                                                                                                                                
                                                                 <div class="row">
                                                                     <div class="col-sm-6">
                                                                          <h6>Initial Payables</h6> 
                                                                        <h5 class="m-b-30 f-w-700 text-c-yellow"> $ 000.000</h5>
                                                                      </div>
                                                                     
                                                                     <div class="col-sm-6">
                                                                         <h6 class="text-right">Current Payables</h6>
                                                                        <h5 class="m-b-30 f-w-700 text-c-blue text-right"> $ 000.000</h5>
                                                                      </div>
                                                                  </div>
                                                                 
                                                                 <div class="progress">
                                                                     <div class="progress-bar bg-c-blue" style="width:25%"></div>
                                                                 </div>
                                                             </div>
                                                             <div class="col-xl-6 col-md-6">
                                                                  <div class="row">
                                                                     <div class="col-sm-6">
                                                                          <h6>Initial Receivables</h6> 
                                                                        <h5 class="m-b-30 f-w-700 text-c-yellow"> $ 000.000</h5>
                                                                      </div>
                                                                     
                                                                     <div class="col-sm-6">
                                                                         <h6 class="text-right">Current Receivables</h6>
                                                                        <h5 class="m-b-30 f-w-700 text-c-green text-right"> $ 000.000</h5>
                                                                      </div>
                                                                  </div>
                                                                 <div class="progress">
                                                                     <div class="progress-bar bg-c-green" style="width:35%"></div>
                                                                 </div>
                                                             </div>

                                                         </div>
                                                     </div>
                                                 </div>
                                             </div>
                                             <!-- Project statistic end -->
                                             
                                            <!-- Threshold plugin start -->
                                            <div class="col-xl-12 col-md-12">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Cash Flow</h5>
                                                        <div class="col-sm-4 pull-right">
                                                            <form >
                                                                    
                                                                <select class="form-control">
                                                                    <option>[ Fiscal Year ]</option>
                                                                    <option>2016-2017</option>
                                                                    <option>2017-2018</option>
                                                                    <option>2018-2019</option>
                                                                </select>
                                                                
                                                            </form>
                                                        </div>
                                                     </div>
                                                    <div class="card-block">
                                                        <div class="row">
                                                            <div class="col-sm-9">
                                                                <canvas id="lineChart"></canvas> 
                                                            </div>
                                                        
                                                        <div class="col-sm-3">
                                                        <div class="card table-card" style="margin-top: 35px;">
                                                            <div class="card-block"  >
                                                                <div class="text-right">
                                                                    <span style="font-size: 13px;" class="text-disable">Beginning Cash Balance</span><br>
                                                                    <span style="font-size: 14px; font-weight: bold;" class="text-disable text-right">$ 400,999,000</span> <br><br>
                                                                    <span style="font-size: 13px;" class="text-success">Incoming</span><br>
                                                                    <span style="font-size: 14px; font-weight: bold;" class="text-disable text-right">$ 400,999,000</span><br><br>
                                                                    <span style="font-size: 13px;" class="text-danger">Outgoing</span><br>
                                                                    <span style="font-size: 14px; font-weight: bold;" class="text-disable text-right">$ 400,999,000</span><br><br>
                                                                    <span style="font-size: 13px;" class="text-info">Current Cash Balance</span><br>
                                                                    <span style="font-size: 14px; font-weight: bold;" class="text-disable text-right">$ 400,999,000</span><br>
                                                                </div>
                                                            </div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                     
                                        </div>
                                        <!-- [ page content ] end -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                                        
<%
    }
catch(Exception e)
{
       out.print(e);
} 
conn.close();
%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>



<script>
  //line
  var ctxL = document.getElementById("lineChart").getContext('2d');
  var myLineChart = new Chart(ctxL, {
    type: 'line',
    data: {
      labels: ["January", "February", "March", "April", "May", "June", "July"],
      datasets: [
        {
          label: "Cash Flow",
          data: [28, 48, 40, 19, 86, 27, 90],
          backgroundColor: [
            'rgba(0, 137, 132, .2)',
          ],
          borderColor: [
            'rgba(0, 10, 130, .7)',
          ],
          borderWidth: 2
        }
      ]
    },
    options: {
      responsive: true
    }
  });


</script>
<script>
  //line
  var ctxL = document.getElementById("myChart").getContext('2d');
  var myLineChart = new Chart(ctxL, {
    type: 'line',
    data: {
      labels: ["January", "February", "March", "April", "May", "June", "July"],
      datasets: [{
          label: "Sales",
          data: [65, 59, 80, 81, 56, 55, 40],
          backgroundColor: [
            'rgba(28, 188, 156, .2)',
          ],
          borderColor: [
            'rgb(46, 216, 182, .7)',
          ],
          borderWidth: 2
        }
      ]
    },
    options: {
      responsive: true
    }
  });

</script>
<script>
$(function() {
   $( function() {
    $( "#datepicker" ).datepicker();
  } );
</script>
              



<!--
 
    <div class="col-xl-3 col-md-6">
         <div class="pp-cont">
             <div class="row align-items-center m-b-20">
                 <div class="col-auto">
                     <img src="images/b-s.png" style="height: 45px; width: 45px;" alt=""/>
                 </div>

                 <div class="col text-right">    
                   <p class="m-b-0 text-center text-c-blue" style="font-weight: bold;"> Balance Sheet</p>

                 </div>
             </div>
             <div class="row align-items-center m-b-15">
                <div class="row">
                 <div class="col-sm-6">
                     <span class="m-b-0">Assets</span>                                                                            
                 </div>
                 <div class="col-sm-12 text-right ">
                     <p class="m-b-0 text-c-blue" style="padding-left: 0px !important; ">$ 10,000,000,000,000,000</p>                                                                            
                 </div>
                </div>
                 <div class="row">
                 <div class="col-sm-6">
                     <span class="m-b-0">Liabilities</span>                                                                            
                 </div>
                 <div class="col-sm-12 text-right ">
                     <p class="m-b-0 text-c-blue" style="padding-left: 0px !important; padding-right: 0px !important;">$ 10,000,000,000,000,000</p>                                                                            
                 </div>
                </div>
             </div>                                                                    
         </div>
     </div>

-->