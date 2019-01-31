

<div class="pcoded-content">
                        <!-- [ breadcrumb ] start -->
                        <div class="page-header card">
                            <div class="row align-items-end">
                                <div class="col-lg-8">
                                    <div class="page-header-title">
                                        <i class="feather icon-home bg-c-blue"></i>
                                        <div class="d-inline">
                                            <h5>Dashboard</h5>
                                            <span>Welcome <%=session.getAttribute("UserName") %></span>
                                        </div>
                                    </div>
                                </div>
                            
                            </div>
                        </div>
                        <!-- [ breadcrumb ] end -->
                        
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <div class="page-body">
                                        <!-- [ page content ] start -->
                                        <div class="row">

                                           <!-- peoduct statustic start -->
                                            <div class="col-xl-12">
                                                <div class="card product-progress-card">
                                                    <div class="card-block">
                                                        <div class="row pp-main">
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
                                                                        <div class="col-auto">
                                                                            <p class="m-b-0">Assets</p>
                                                                            <p class="m-b-0">Liabilities</p>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            <p class="m-b-0 text-c-blue">0.0</p>
                                                                            <p class="m-b-0 text-c-blue">0.0</p>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="col-xl-3 col-md-6">
                                                                <div class="pp-cont">
                                                                    <div class="row align-items-center m-b-20">
                                                                        <div class="col-auto">
                                                                            <img src="images/acc-p.jpg" style="width: 45px; height: 45px;" alt=""/>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            <h2 class="m-b-0 text-c-yellow">0.0</h2>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row align-items-center m-b-15">
                                                                        <div class="col-auto">
                                                                            <p class="m-b-0">Accounts Payables</p>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            <p class="m-b-0 text-c-yellow"><i class="fas fa-long-arrow-alt-up m-r-10"></i>0.0%</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="progress">
                                                                        <div class="progress-bar bg-c-yellow" style="width:0%"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-3 col-md-6">
                                                                <div class="pp-cont">
                                                                    <div class="row align-items-center m-b-20">
                                                                        <div class="col-auto">
                                                                            <img src="images/acc-r.jpeg" style="width: 45px; height: 45px;" alt=""/>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            <h2 class="m-b-0 text-c-red">0.0</h2>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row align-items-center m-b-15">
                                                                        <div class="col-auto">
                                                                            <p class="m-b-0">Accounts Receivables</p>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            <p class="m-b-0 text-c-red"><i class="fas fa-long-arrow-alt-down m-r-10"></i>0.0%</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="progress">
                                                                        <div class="progress-bar bg-c-red" style="width:2%"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                             <div class="col-xl-3 col-md-6">
                                                                <div class="pp-cont">
                                                                    <div class="row align-items-center m-b-20">
                                                                        <div class="col-auto">
                                                                            <img src="images/i-s.png" style="width: 45px; height: 45px;" alt=""/>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            <p class="m-b-0 text-center text-c-green" style="font-weight: bold;"> Income Statement</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row align-items-center m-b-15">
                                                                        <div class="col-auto">
                                                                            <p class="m-b-0">Expenses</p>
                                                                            <p class="m-b-0">Incomes</p>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            <p class="m-b-0 text-c-green">0.0</p>
                                                                            <p class="m-b-0 text-c-green">0.0</p>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                          
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- product statistic end -->

                                            <!-- Threshold plugin start -->
                                            <div class="col-xl-6 col-md-12">
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
                                                        <canvas id="lineChart"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Threshold plugin end -->
                                            
                                            
                                            <!-- Application Sales start -->
                                            <div class="col-xl-6 col-md-12" >
                                                <div class="card table-card">
                                                    <div class="card-header">
                                                        <h5>Expenses</h5> 
                                                          <div class="col-sm-8 pull-right">
                                                                <form method="post" >                                                                    
                                                                    <input type="text" id="datepicker" value="01/01/2018 - 01/15/2018" class="form-control" />
                                                                </form>
                                                          </div>
                                                    </div>
                                                    <div class="card-block">
                                                       <canvas id="myChart" ></canvas>
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
            