<div class="pcoded-content">
    <div class="pcoded-inner-content">
     <div class="card">
       <div class="card-block"> 
              <!-- Default ordering table start -->
            <div class="card">
                <div class="card-header">
                    <h5>List of Petty Cash</h5>
                    
                </div>
                <div class="card-block">
                    <div class="dt-responsive table-responsive">
                        <table id="order-table" class="table table-striped table-bordered nowrap table-xs">
                            <thead>
                                <tr>
                                    <th>Code </th>
                                    <th>Acc. Code</th>
                                    <th>Name</th>
                                    <th>Branch</th>
                                    <th>Description</th>                                    
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>154288</td>
                                    <td>100040</td>
                                    <td>GT Bank</td>
                                    <td>Kagugu</td>
                                    <td style="font-size: 12px;">
                                        There is nothing in the description<br> tab of this petty cash,
                                        to add it just ckick <br> on the edit icon to update its information!
                                    </td>
                                     <td>
                                        <a href="#!" title="Update" data-toggle="modal" data-target="#update_petty_cash"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>154888</td>
                                    <td>100040</td>
                                    <td>Coge Bank</td>                                   
                                    <td>Gisozi</td>
                                    <td>
                                        There is nothing in the description<br> tab of this petty cash,
                                        to add it just ckick <br> on the edit icon to update its information!
                                    </td>
                                     <td>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                     <td>12788</td>
                                    <td>100540</td>
                                    <td>Sacco </td>                                 
                                    <td>Karongi</td>
                                    <td>
                                       There is nothing in the description<br> tab of this petty cash,
                                        to add it just ckick <br> on the edit icon to update its information!
                                    </td>
                                   <td>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>157888</td>
                                    <td>100540</td>
                                    <td>Equity Bank</td>                                   
                                    <td>Rwanda</td>
                                    <td> 
                                        There is nothing in the description<br> tab of this petty cash,
                                        to add it just ckick <br> on the edit icon to update its information!
                                    </td>
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
</div>


<div class="modal fade" tabindex="-1" id="update_petty_cash" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update Petty Cash</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
           <form >
             <div class="form-group row">
                  <label class="col-sm-3 col-form-label">Name </label>
                  <div class="col-sm-9">
                      <input class="form-control form-control-sm" name="bank_name" value="GT Bank" required="required">
                  </div>
              </div>
               <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Branch </label>
                    <div class="col-sm-9">
                        <input class="form-control form-control-sm" name="branch" value="Kagugu" required="required">
                    </div>
                </div>
              <div class="form-group row">
                  <label class="col-sm-3 col-form-label">Description <span class="required">*</span></label>
                  <div class="col-sm-9">
                      <textarea class="form-control form-control-sm" name="description" required="true" >There is nothing in the description tab of this petty cash,to add it just ckick on the edit icon to update its information!</textarea>
                  </div>
              </div>      

        </form>
            </div>
            <div class="modal-footer">
                 <button type="submit" class="btn btn-primary btn-sm pull-right" style="margin-left: 15px;">Save</button>
                 <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>

