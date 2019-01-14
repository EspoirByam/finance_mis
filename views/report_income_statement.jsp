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
        height: 400px;
    }
    .td-style{
        width: 60px; padding-left: 40px;
    }
    .td-bold{
        font-weight: bold !important;
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
    .padd-top-15{
        padding-top: 22px !important;
        margin-top: 20px !important;
    }
  
</style>

<div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="card">
            <div class="card-block">
               
                      <div class="row">
                        <div class="col-md-9 offset-md-1">
                           <form>
                                <div class="form-row">
                                  <div class="col">
                                     <label> Start date</label>
                                    <input type="date" class="form-control input-group-sm" value="2019-01-12">
                                  </div>
                                  <div class="col">
                                    <label> End date</label>
                                    <input type="date" class="form-control" value="2019-01-12">
                                  </div>
                                  <div class="col">
                                    <label> Fiscal year</label>
                                    <select class="form-control">
                                        <option value="1">2016-2017</option>
                                        <option value="2">2017-2018</option>
                                        <option value="3">2018-2019</option>
                                    </select>
                                  </div>
                                  <div class="col" style="padding-top:5px;">
                                      <label>&nbsp;</label>
                                        <button class="btn btn-md btn-primary" type="submit"> <i class="fa fa-search"></i> Search</button>
                                  </div>
                                </div>
                          </form>
                        </div>                        
                    </div>
                        <div class="row">                  
                          <div class="col-md-9 offset-md-1 padd-bottom">
                          <table width="100%" class="t-h-long">
                              <thead>
                                <tr>
                                    <td scope="col" class="td-bold" colspan="3" align="center" style="background: #9999ff;">INCOME STATEMENT</td>
                                </tr>
                              </thead>
                              <tbody>
                                  <tr class="tr-h hover" onclick="detail()">
                                  <td >Sales revenue</td>
                                  <td class="td-style">1</td>
                                  <td class="td-style">0</td>
                                </tr>
                                <tr class="tr-h hover" onclick="costofgood()">
                                  <td >Cost of good sold</td>
                                  <td class="td-style">2</td>
                                  <td class="td-style">0</td>
                                </tr>
                                <tr class="tr-h line hover" onclick="otherincom()">
                                  <td >Other Income</td>
                                  <td class="td-style">3</td>
                                  <td class="td-style">0</td>
                                </tr>
                                <tr class="tr-h">
                                      <td colspan="2" class="td-bold padd-bottom" > GROSS MARGIN</td>
                                      <td class="td-style padd-bottom">0</td>
                                  </tr>
                                  <tr class="tr-h hover" onclick="salemarkerting()" >
                              <div>
                                  <br>
                              </div>
                                  <td >Sales and marketing</td>
                                  <td class="td-style">5</td>
                                  <td class="td-style">0</td>
                                </tr>
                                <tr class="tr-h hover" onclick="researchdev()">
                                  <td >Research & Development</td>
                                  <td class="td-style">6</td>
                                  <td class="td-style">0</td>
                                </tr>
                                <tr class="tr-h line hover" onclick="otherexpenses()">
                                  <td >Other expenses</td>
                                  <td class="td-style">7</td>
                                  <td class="td-style">0</td>
                                </tr>
                                <tr class="tr-h">
                                  <td colspan="2" class="td-bold">OPERATING EXPENSIVES</td>
                                  <td class="td-style">0</td>
                                </tr>
                                <tr class="tr-h"> 
                                    <td colspan="2" class="td-bold padd"> INCOME FROM OPERATIONS </td>
                                    <td class="td-style">0</td>
                                </tr>
                                <tr>
                                    <td><b>  Interest income </b></td>
                                    <td class="td-style">8</td> 
                                    <td class="td-style">0 </td> 
                               </tr>
                               <tr class="tr-h" > 
                                  <td> Income tax  </td>
                                  <td class="td-style" >9</td>
                                  <td class="td-style">0</td>     
                                  </td> 
                               </tr>
                               <tr  style="text-decoration: underline;" class="tr-h"> 
                                   <td class="td-bold padd-top">NET INCOME</td>
                                   <td class="td-style padd-top" >10</td>
                                   <td class="td-style padd-top">0</td>
                               </tr>

                              </tbody>
                            </table>
                          </div>
                          <div class="col-md-2">
                              <a class="btn btn-mini padd-top" sytle="color: white;" > <img class="padd-top-15 img-responsive" src="images/pdf.png"/> Export</a>
                              <a class="btn btn-mini padd-top" sytle="color: white;" > <img class="padd-top-15 img-responsive" src="images/excel.png"/> Export</a>
                          </div>
                       </div>
                     </div>
                
           </div>
        </div>
    </div>
</div>

<!--Sales revenue Detail Modal -->
<div class="modal fade" id="salesrevenue" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Sales revenue</h5>
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

<!-- Cost of good sold Detail Modal -->
<div class="modal fade" id="costofgood" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Cost of good sold</h5>
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

<!-- Other Income Detail Modal -->
<div class="modal fade" id="otherincom" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Other Income</h5>
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

<!-- Sales and marketing Detail Modal -->
<div class="modal fade" id="salemarkerting" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Sales and marketing</h5>
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

<!-- Research & Development Detail Modal -->
<div class="modal fade" id="researchdev" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Research & Development</h5>
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

<!-- Other expenses Detail Modal -->
<div class="modal fade" id="otherexpenses" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Other expenses</h5>
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
        $('#salesrevenue').modal('show')
    };
   function costofgood(){ 
    $('#costofgood').modal('show')
   };
   function otherincom(){
      $('#otherincom').modal('show')
     };
   function salemarkerting(){
      $('#salemarkerting').modal('show')
     };
   function researchdev(){
      $('#researchdev').modal('show')
     };
   function otherexpenses(){
      $('#otherexpenses').modal('show')
     };

</script>