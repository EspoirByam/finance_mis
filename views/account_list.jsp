<style>
    .table tr {
    cursor: pointer;
}
.hiddenRow {
    padding: 0 4px !important;
    background-color: #eeeeee;
    font-size: 12px;
}
.hiddenRow1 {
    padding: 0 4px !important;
    background-color: #F0FFFF !important;
    font-size: 12px;
    font-weight: 400;
}

//customized Css
.header-pannel a{
    font-family: aroma !important;
    font-size: 13px !important;
}
</style>

<div class="pcoded-content">
    <div class="pcoded-inner-content">
     <div class="card">
       <div class="card-block"> 
            <!-- Nav tabs -->
            <ul class="nav nav-tabs md-tabs header-pannel" role="tablist" style="font-family: aroma !important; font-size: 15px !important;">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#home7" role="tab" style="font-color: #0000"><i class="fa fa-gg" style="margin-left: 5px;"></i> Balance Sheet Account List</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#profile7" role="tab"><i class="fa fa-money"></i> Income Statement Account List</a>
                <!--<div class="slide"></div> -->
                </li>              
              
            </ul>
            <!-- Tab panes -->
            <div class="tab-content card-block">
                <div class="tab-pane active" id="home7" role="tabpanel">
                    <div class="pull-right">
                        <a class="btn btn-mini" sytle="color: white;   " href="#"> <img src="images/pdf.png"/> Export</a>
                    </div>
                  <div class="table-responsive dt-responsive">
                         <table class="table table-hover m-b-0 table-xs">
                            <thead>
                                <tr>
                                    <th>Account No</th>
                                    <th>Account Name</th>
                                    <th>Balance</th>
                                    <th>Default</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr> 
                                    <th style="font-weight: bold;">100124311</th>
                                    <td>Salary level 0</td>
                                    <td>200,000,000</td>
                                    <td>Credit</td>
                                    <td>   
                                        <a class=""><i class="fa fa-eye icon-eye f-w-600 f-16 m-r-15 text-c-blue" data-toggle="modal" data-target="#view-account"></i></a>
                                        <a href="#!" title="Update" data-toggle="modal" data-target="#large-Modal" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" class="deleteConfirm" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>   
                                </tr>
                                <tr>
                                    <th scope="row">100124311</th>
                                    <td>Salary</td>
                                    <td>200,000,000</td>
                                    <td>Credit</td>
                                    <td>   
                                        <a class=""><i class="fa fa-eye icon-eye f-w-600 f-16 m-r-15 text-c-blue "></i></a>
                                        <a href="#!" title="Update" data-toggle="modal" data-target="#large-Modal" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">100124412</th>
                                    <td>Expenses</td>
                                    <td>300,000,000</td>
                                    <td>Debit</td>
                                     <td>
                                        <a class=""><i class="fa fa-eye icon-eye f-w-600 f-16 m-r-15 text-c-blue "></i></a>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1001245113</th>
                                    <td>Loan</td>
                                    <td>122,332,000</td>
                                    <td>Credit</td>
                                     <td>
                                        <a class=""><i class="fa fa-eye icon-eye f-w-600 f-16 m-r-15 text-c-blue "></i></a>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>   
                </div>
                
                <div class="tab-pane" id="profile7" role="tabpanel">                    
                    <div class="pull-right">
                        <a class="btn btn-mini" sytle="color: white;" href="#"> <img src="images/pdf.png"/> Export</a>
                    </div>
                  <div class="table-responsive dt-responsive">
                         <table class="table table-hover m-b-0 table-xs">
                            <thead>
                                <tr>
                                    <th>Account No</th>
                                    <th>Account Name</th>
                                    <th>Amount</th>
                                    <th>Default</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                               <tr data-toggle="collapse" data-target="#demo11" class="accordion-toggle">
                                <th style="font-weight: bold;">25480411</th>
                                <td>Salary level 1</td>
                                <td>200,000,000</td>
                                <td>Credit</td>
                                <td>                                        
                                    <a href="#!" title="Update" data-toggle="modal" data-target="#large-Modal" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                    <a href="#!" class="deleteConfirm" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                </td>
                            </tr>
                            <tr id="demo11" data-toggle="collapse" data-target="#level13" class="hiddenRow collapse accordion-toggle" >
                                <div class="hiddenRow1" >
                                    <td style="font-weight: 550;">25484311</td>
                                    <td>Salary level 2</td>
                                    <td>200,000,000</td>
                                    <td>Credit</td>
                                    <td>                                        
                                       <a href="#!" title="Update" data-toggle="modal" data-target="#large-Modal" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </div>
                            </tr>
                            <tr id="level13" data-toggle="collapse" class="hiddenRow collapse accordion-toggle">
                                <div class="hiddenRow" >
                                    <td >25484311</td>
                                    <td>Salary level 3</td>
                                    <td>200,000,000</td>
                                    <td>Credit</td>
                                    <td>                                        
                                        <a href="#!" title="Update" data-toggle="modal" data-target="#large-Modal" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </div>
                            </tr>                                
                                
                               
                                <tr>
                                    <th scope="row">25484412</th>
                                    <td>Expenses</td>
                                    <td>300,000,000</td>
                                    <td>Debit</td>
                                     <td>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1001245113</th>
                                    <td>Loan</td>
                                    <td>122,332,000</td>
                                    <td>Credit</td>
                                     <td>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div> 
                </div>
              
            </div>
       </div>

    </div>
</div>
    

    
    
 <!--View Account Modal LEVEL-0 --> 
<div class="modal fade" id="view-account" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">View Account</h4>
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
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            <tr style="font-weight: bold;"> 
                                <th >100124311</th>
                                <td > Salary level 1</td>
                                <td>200,000,000</td>
                                <td>Credit</td>
                                <td>   
                                    <a href="#!" title="Update" id="update" data-toggle="modal" data-target="#update-level-1" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                    <a href="#!" class="deleteConfirm" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                </td>
                            </tr>
                              <tr>
                                    <td style="font-weight: 550;">100124311</td>
                                    <td>&nbsp;&nbsp; &nbsp;Salary level 2</td>
                                    <td>200,000,000</td>
                                    <td>Credit</td>
                                    <td>
                                         <a href="#!" title="Update" data-toggle="modal" data-target="#update-level-2" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                               <tr>                               
                                    <td >100124311</td>
                                    <td>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;Salary level 3</td>
                                    <td>200,000,000</td>
                                    <td>Credit</td>
                                    <td>
                                        <a href="#!" title="Update" data-toggle="modal" data-target="#update-level-3" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>                               
                            </tr>
                      
                            </tbody>
                        </table>         
            </div>
            <div class="modal-footer">
                  <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Cancel</button>
                 <button type="submit" class="btn btn-primary btn-sm" style="margin-left: 75%;">Save</button>
            </div>
        </div>
    </div>
</div>
<!-- End of View Account Modal LEVEL-0 --> 

<!--Update Account Modal LEVEL-0 --> 
<div class="modal fade" id="large-Modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update Account</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="newAcc" method="" >
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Book</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="#newBook"> New</option>
                                    <option value="2">Book 2</option>
                                    <option value="3">Book 3</option>
                                    <option value="4">Book 4</option>                       
                                </select>
                            </div>
                        </div>
                        <div class="form-group row" >
                            <label class="col-sm-4 col-form-label">Global Account</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="newAccount"> New</option>
                                    <option value="">Account 2</option>
                                    <option value="">Account 3</option>
                                    <option value="">Account 4</option>                       
                                </select>
                            </div>
                        </div> 
                       
                        <div class="form-group row" id="acc_name" >
                            <label class="col-sm-4 col-form-label" for="acc_name">Account Name </label>
                            <div class="col-sm-8 ">                                               
                                <div class="input-group">
                                    <input type="text" id="contactid" name="acc_name" required="required" value="Salary level 0" class="form-control form-control-sm">                                 
                                </div> 
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Reconciliation</label>
                            <div class="col-sm-8">
                                <div class="checkbox-fade fade-in-primary">
                                    <label>
                                        <input type="checkbox" value="">
                                        <span class="cr">
                                            <i class="cr-icon icofont icofont-ui-check txt-primary"></i>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                       

                    </form>           
            </div>
            <div class="modal-footer">
                  <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Cancel</button>
                 <button type="submit" class="btn btn-primary btn-sm" style="margin-left: 75%;">Save</button>
            </div>
        </div>
    </div>
</div>    

<!--Update Account Modal LEVEL-1 --> 
<div class="modal fade" id="update-level-1" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update Account</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="newAcc" method="" >
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Book</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="#newBook"> New</option>
                                    <option value="2">Book 2</option>
                                    <option value="3">Book 3</option>
                                    <option value="4">Book 4</option>                       
                                </select>
                            </div>
                        </div>
                        <div class="form-group row" >
                            <label class="col-sm-4 col-form-label">Global Account</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="newAccount"> New</option>
                                    <option value="">Account 2</option>
                                    <option value="">Account 3</option>
                                    <option value="">Account 4</option>                       
                                </select>
                            </div>
                        </div> 
                       
                        <div class="form-group row" id="acc_name" >
                            <label class="col-sm-4 col-form-label" for="acc_name">Account Name </label>
                            <div class="col-sm-8 ">                                               
                                <div class="input-group">
                                    <input type="text" id="contactid" name="acc_name" required="required" value="Salary level 0" class="form-control form-control-sm">                                 
                                </div> 
                            </div>
                        </div> 
                     <div class="form-group row" >
                            <label class="col-sm-4 col-form-label">Sub Account</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="newAccount"> New</option>
                                    <option value="">Account 2</option>
                                    <option value="">Account 3</option>
                                    <option value="">Account 4</option>                       
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Reconciliation</label>
                            <div class="col-sm-8">
                                <div class="checkbox-fade fade-in-primary">
                                    <label>
                                        <input type="checkbox" value="">
                                        <span class="cr">
                                            <i class="cr-icon icofont icofont-ui-check txt-primary"></i>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                       

                    </form>           
            </div>
            <div class="modal-footer">
                  <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Cancel</button>
                 <button type="submit" class="btn btn-primary btn-sm" style="margin-left: 75%;">Save</button>
            </div>
        </div>
    </div>
</div>    
<!-- End of View Account Modal LEVEL-1 --> 

<!--Update Account Modal LEVEL-2 --> 
<div class="modal fade" id="update-level-2" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update Account</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="newAcc" method="" >
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Book</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="#newBook"> New</option>
                                    <option value="2">Book 2</option>
                                    <option value="3">Book 3</option>
                                    <option value="4">Book 4</option>                       
                                </select>
                            </div>
                        </div>
                        <div class="form-group row" >
                            <label class="col-sm-4 col-form-label">Global Account</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="newAccount"> New</option>
                                    <option value="">Account 2</option>
                                    <option value="">Account 3</option>
                                    <option value="">Account 4</option>                       
                                </select>
                            </div>
                        </div> 
                       
                        <div class="form-group row" id="acc_name" >
                            <label class="col-sm-4 col-form-label" for="acc_name">Account Name </label>
                            <div class="col-sm-8 ">                                               
                                <div class="input-group">
                                    <input type="text" id="contactid" name="acc_name" required="required" value="Salary level 2" class="form-control form-control-sm">                                 
                                </div> 
                            </div>
                        </div> 
                     <div class="form-group row" >
                            <label class="col-sm-4 col-form-label">Sub Account</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="newAccount"> New</option>
                                    <option value="">Account 2</option>
                                    <option value="">Account 3</option>
                                    <option value="">Account 4</option>                       
                                </select>
                            </div>
                        </div>
                      <div class="form-group row" >
                            <label class="col-sm-4 col-form-label">Sub Sub Account</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="newAccount"> New</option>
                                    <option value="">Account 2</option>
                                    <option value="">Account 3</option>
                                    <option value="">Account 4</option>                       
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Reconciliation</label>
                            <div class="col-sm-8">
                                <div class="checkbox-fade fade-in-primary">
                                    <label>
                                        <input type="checkbox" value="">
                                        <span class="cr">
                                            <i class="cr-icon icofont icofont-ui-check txt-primary"></i>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                       

                    </form>           
            </div>
            <div class="modal-footer">
                  <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Cancel</button>
                 <button type="submit" class="btn btn-primary btn-sm" style="margin-left: 75%;">Save</button>
            </div>
        </div>
    </div>
</div>    
<!-- End of View Account Modal LEVEL-2 --> 

<!--Update Account Modal LEVEL-3 --> 
<div class="modal fade" id="update-level-3" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update Account</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="newAcc" method="" >
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Book</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="#newBook"> New</option>
                                    <option value="2">Book 2</option>
                                    <option value="3">Book 3</option>
                                    <option value="4">Book 4</option>                       
                                </select>
                            </div>
                        </div>
                        <div class="form-group row" >
                            <label class="col-sm-4 col-form-label">Global Account</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="newAccount"> New</option>
                                    <option value="">Account 2</option>
                                    <option value="">Account 3</option>
                                    <option value="">Account 4</option>                       
                                </select>
                            </div>
                        </div> 
                       
                        <div class="form-group row" id="acc_name" >
                            <label class="col-sm-4 col-form-label" for="acc_name">Account Name </label>
                            <div class="col-sm-8 ">                                               
                                <div class="input-group">
                                    <input type="text" id="contactid" name="acc_name" required="required" value="Salary level 3" class="form-control form-control-sm">                                 
                                </div> 
                            </div>
                        </div> 
                     <div class="form-group row" >
                            <label class="col-sm-4 col-form-label">Sub Account</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="newAccount"> New</option>
                                    <option value="">Account 2</option>
                                    <option value="">Account 3</option>
                                    <option value="">Account 4</option>                       
                                </select>
                            </div>
                        </div>
                      <div class="form-group row" >
                            <label class="col-sm-4 col-form-label">Sub Sub Account</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="newAccount"> New</option>
                                    <option value="">Account 2</option>
                                    <option value="">Account 3</option>
                                    <option value="">Account 4</option>                       
                                </select>
                            </div>
                        </div>
                     <div class="form-group row" >
                            <label class="col-sm-4 col-form-label"> Sub Sub Sub Account</label>
                            <div class="col-sm-8">
                                <select name="select" class="form-control form-control-sm">
                                    <option class="text-default">[ SELECT ]</option>
                                    <option data-toggle="modal" data-target="newAccount"> New</option>
                                    <option value="">Account 2</option>
                                    <option value="">Account 3</option>
                                    <option value="">Account 4</option>                       
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Reconciliation</label>
                            <div class="col-sm-8">
                                <div class="checkbox-fade fade-in-primary">
                                    <label>
                                        <input type="checkbox" value="">
                                        <span class="cr">
                                            <i class="cr-icon icofont icofont-ui-check txt-primary"></i>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                       

                    </form>           
            </div>
            <div class="modal-footer">
                  <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Cancel</button>
                 <button type="submit" class="btn btn-primary btn-sm" style="margin-left: 75%;">Save</button>
            </div>
        </div>
    </div>
</div>    
<!-- End of View Account Modal LEVEL-2 --> 

<script type="text/javascript">
    $('.accordian-body').on('show.bs.collapse', function () {
    $(this).closest("table")
        .find(".collapse.in")
        .not(this)
        .collapse('toggle')
})
</script>
<script>
    $(document).ready(function() {
    $('#demo11').on('hidden.bs.collapse', function () {
        console.log('triggered');      
        $('#level13').collapse('hide');
    });
});
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <script>
    $(document).ready(function() {
    var max_fields      = 4; //maximum input boxes allowed
    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var add_button      = $(".add_field_button"); //Add button ID   
    var x = 1; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(x < max_fields){ //max input box allowed
            x++; //text box increment
            $(wrapper).append('<div class="form-group row"><label class="col-sm-4 col-form-label">Account Name</label>\
                 <div class="col-sm-8 ">\
                     <select name="select" class="form-control form-control-sm">\
                         <option value="" disabled>[ SELECT ]</option> <option value="">Account 2</option><option value="">Account 3</option> <option value="">Account   4</option> </select> </div> <a href="#" style="margin-left: 27%;" class="remove_field btn-mini btn-warning">Remove</a></div>'); //add form
        }
    });
   
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
        $(document).ready(function() {update();});
    })
    
});

 </script>
<script>
              
        $('#book').change(function () {

            var item = $(this, 'option:selected').val();
            if (item == 2) {
                    
            $('#acc_name').show(1);
            $('#global_acc').show(1);
            } else{
               $('#acc_name').hide();
               $('#global_acc').hide(); 
            }
        });
        
</script>     
<script>
    $(document).ready(function() {
    $('.deleteConfirm').click(function(){
      //todo: get confirm message from <a> tag data attribute
    var answer = confirm('Are you sure?');
    return answer; // answer is a boolean
  });
});
</script>
