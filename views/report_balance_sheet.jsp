<style>
    .hover :hover{
        background-color: #9999ff;
        font-weight: bold !important;
        cursor: pointer;
    }
    .tr-h{
        LINE-HEIGHT:15px !important;
    }
    .t-h-long{
        height: 450px;
    }
    
    .td-style{
        width: 60px; padding-left: 40px;
    }
    .td-bold{
        font-weight: bold !important;
        font-family: aroma;
    }
    .line{
         border-bottom: 1px solid #000;
    }
    
    .padd{
        padding-top: 15px !important;
        margin-top: 15px !important;
        padding-bottom: 15px !important;
        margin-bottom: 15px !important;
        }
    .padd-bottom{
        padding-bottom: 15px !important;
        margin-bottom: 15px !important;
    }
     .padd-top{
        padding-top: 15px !important;
        margin-top: 15px !important;
    }
  
</style>

<div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="card">
            <div></div>
            <div class="card-block">
               
              <div class="row">
                <div class="col-md-8 offset-md-2 padd-bottom">
                <table width="80%" class="t-h-long">
                    <tbody>
                      <tr>
                          <td scope="col" class="td-bold" colspan="2" align="center" style="background: #9999ff;"><h4>BALANCE SHEET</h4></td>
                      </tr>                   
                      <tr class="tr-h">
                          <td >
                              <div>
                                  <h6 class="td-bold">Assets</h6>
                                  <table width="100%" class="t-h-long">
                                    <tr class="hover" onclick="detail()" data-whatever="Cas(HandOnBank)">                                          
                                        <td>Cash (hand and bank)</td>
                                        <td class="td-style">0</td>     
                                    </tr>                                     
                                    <tr class="hover" onclick="accdetail()">
                                        <td >Account Receivable</td>
                                        <td class="td-style">0</td> 
                                    </tr>
                                    <tr class="hover" onclick="invdetail()" >
                                        <td >Inventory</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    <tr class="tr-h line hover" onclick="expensivedetail()"> 
                                        <td >Prepaid expenses</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    
                                    <tr class="tr-h">
                                        <td class="td-bold padd-bottom">CURRENT ASSETS</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    <tr  class="tr-h hover" onclick="otherasset()">
                                        <td>Other Assets</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    <tr class="hover" >
                                        <td>Fixed asset at cost</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    <tr class="tr-h line hover">
                                        <td>Accumulated depreciation</td>
                                        <td class="td-style">0</td>
                                    </tr>

                                    <tr class="tr-h">
                                        <td class="td-bold padd-bottom">NET FIXED ASSETS</td>
                                        <td class="td-style">0</td>
                                    </tr>                                   
                                    <tr class="tr-h line">
                                        <td class="td-bold">TOTAL ASSET</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                     <tr>
                                        <td colspan="2" style="border-bottom: 1px solid #000;"></td>
                                    </tr>
                                    
                                </table>
                              </div>
                          </td>
                          <td >
                              <div class="ml-20" style="margin-left:15%;">
                                  <h6 class="td-bold" style="font-familly: aroma;">Liabilities and Equity</h6>
                                  <table width="100%" class="t-h-long">
                                    
                                    <tr class="tr-h hover">
                                        <td >Accounts Payable </td>
                                        <td class="td-style"> 0</td>
                                    </tr>
                                    <tr class="tr-h hover">
                                        <td>Accrued expenses</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    <tr class="tr-h hover">
                                        <td>Income taxes payable</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    <tr class="tr-h hover">
                                        <td>Current portion of debt</td>
                                        <td class="td-style"> 0</td>
                                    </tr>
                                    <tr class="tr-h line hover">
                                        <td>Income taxes payable</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    <tr class="tr-h td-bold"> 
                                        <td class="padd-bottom">CURRENT LIABILITIES</td>
                                        <td class="td-style"> 0</td>
                                    </tr>
                                    <tr class="tr-h hover"> 
                                        <td>Long term debt</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    <tr class="tr-h hover"> 
                                        <td>Capital stock</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    <tr class="tr-h line hover"> 
                                        <td>Retained earnings</td>
                                        <td class="td-style"> 0</td>
                                    </tr>
                                    <tr class="tr-h">
                                        <td class="td-bold padd-bottom">SHAREHOLDER'S EQUITY</td>
                                        <td class="td-style"> 0</td>
                                    </tr>
                                  
                                    <tr class="tr-h line">
                                        <td class="td-bold">TOTAL LIABILITIES & EQUITY</td>
                                        <td class="td-style">0</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="border-bottom: 1px solid #000;"></td>
                                    </tr>
                                </table>
                              </div>
                          </td>
                      </tr>                     
                    </tbody>
                  </table>
                </div>
                <div class="col-md-2">
                    <form action="balance_sheet_report" target="_blank">
                       <button class="btn btn-mini pull-right btn-default" type="submit" style="margin-left: 5px; background: white;">
                            <img class="img-responsive" src="images/pdf.png"/> 
                            <label style="color: black;"> Export</label>
                        </button>                     
                    </form>  
                    <form >
                       <button class="btn btn-mini pull-right btn-default" type="submit" style="margin-left: 5px; background: white;">
                            <img class="img-responsive" src="images/excel.png"/>
                            <label style="color: black;"> Export</label>
                        </button>                     
                    </form> 
                    
                </div>
            </div>
            </div>
           </div>
        </div>
    </div>

<!-- Cash Detail Modal -->
<div class="modal fade" id="cash-detail" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Cash (hand and bank)</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-hover m-b-0 table-xs">
             <thead>
                 <tr>
                     <th>Account No</th>
                     <th>Account Name</th>
                     <th>Balance</th>
                     <th>Default</th>
                 </tr>
             </thead>
             <tbody>
                 <tr style="font-weight: bold;"> 
                     <th >100124311</th>
                     <td > Salary level 1</td>
                     <td>000,000,000</td>
                     <td>Credit</td>                              
                 </tr>
             </tbody>
         </table>  
      </div>
    <div class="modal-footer">
         <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Close</button>
    </div>
    </div>
  </div>
</div>

<!-- Account Receivable Detail Modal -->
<div class="modal fade" id="account-receivable" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Account Receivable</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-hover m-b-0 table-xs">
             <thead>
                 <tr>
                     <th>Account No</th>
                     <th>Account Name</th>
                     <th>Balance</th>
                     <th>Default</th>
                 </tr>
             </thead>
             <tbody>
                 <tr style="font-weight: bold;"> 
                     <th >100124311</th>
                     <td > Salary level 1</td>
                     <td > 000,000,000</td>
                     <td>Credit</td>                              
                 </tr>
             </tbody>
         </table>  
      </div>
    <div class="modal-footer">
         <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Close</button>
    </div>
    </div>
  </div>
</div>

<!-- Inventory Detail Modal -->
<div class="modal fade" id="inventory" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Inventory</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-hover m-b-0 table-xs">
             <thead>
                 <tr>
                     <th>Account No</th>
                     <th>Account Name</th>
                     <th>Balance</th>
                     <th>Default</th>
                 </tr>
             </thead>
             <tbody>
                 <tr style="font-weight: bold;"> 
                     <th >100124311</th>
                     <td > Salary level 1</td>
                     <td > 000,000,000</td>
                     <td>Credit</td>                              
                 </tr>
             </tbody>
         </table>  
      </div>
    <div class="modal-footer">
         <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Close</button>
    </div>
    </div>
  </div>
</div>

<!-- Prepaid expenses Detail Modal -->
<div class="modal fade" id="prepaidexpenses" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Prepaid expenses</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-hover m-b-0 table-xs">
             <thead>
                 <tr>
                     <th>Account No</th>
                     <th>Account Name</th>
                     <th>Balance</th>
                     <th>Default</th>
                 </tr>
             </thead>
             <tbody>
                 <tr style="font-weight: bold;"> 
                     <th >100124311</th>
                     <td > Salary level 1</td>
                     <td > 000,000,000</td>
                     <td>Credit</td>                              
                 </tr>
             </tbody>
         </table>  
      </div>
    <div class="modal-footer">
         <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Close</button>
    </div>
    </div>
  </div>
</div>

<!-- Prepaid expenses Detail Modal -->
<div class="modal fade" id="otherasset" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Other Current Asset</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-hover m-b-0 table-xs">
             <thead>
                 <tr>
                     <th>Account No</th>
                     <th>Account Name</th>
                     <th>Balance</th>
                     <th>Default</th>
                 </tr>
             </thead>
             <tbody>
                 <tr style="font-weight: bold;"> 
                     <th >100124311</th>
                     <td > Salary level 1</td>
                     <td > 000,000,000</td>
                     <td>Credit</td>                              
                 </tr>
             </tbody>
         </table>  
      </div>
    <div class="modal-footer">
         <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Close</button>
    </div>
    </div>
  </div>
</div>

<script>
    
function detail() {
        $('#cash-detail').modal('show')
    };
   function accdetail(){ 
    $('#account-receivable').modal('show')
   };
   function invdetail(){
      $('#inventory').modal('show')
     };
   function expensivedetail(){
      $('#prepaidexpenses').modal('show')
     };
   function otherasset(){
      $('#otherasset').modal('show')
     };

</script>