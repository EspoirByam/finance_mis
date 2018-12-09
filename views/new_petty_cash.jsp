<div class="pcoded-content">
    <!-- [ breadcrumb ] start -->
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-4 col-lg-offset-2">               
                    <div class="page-header-title">
                        <a href="index.jsp?request=new_petty_cash">
                        <i class="feather icon-map bg-c-blue"></i>
                        <div class="d-inline">
                            <h5>New Petty Cash</h5>
                        </div>
                        </a>
                    </div>             
              
            </div>
              <div class="col-lg-4">               
                <div class="page-header-title">
                    <a  data-toggle="modal" data-target="#petty_cash_type" >
                        <i class="feather icon-plus bg-c-blue"></i>
                        <div class="d-inline">
                            <h6>New Petty Cash Type</h6>
                        </div>
                    </a>
                </div>          
              
            </div>
             <div class="col-lg-4">
                <div class="page-header-breadcrumb">
                    <ul class=" breadcrumb breadcrumb-title">
                        <li class="breadcrumb-item">
                            <a href="index.jsp?request=home" title="Home"><i class="feather icon-home"></i></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#!" title="Cash Management"><i class="feather icon-map"></i></a>
                        </li>
                        <li class="breadcrumb-item"><a href="index.jsp?request=bank_list" title="Bank List">Petty Cash</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#!">New Petty Cash </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- [ breadcrumb ] end -->
 <div class="pcoded-inner-content">
   <div class="col-md-8 col-lg-offset-3" style="margin-left: 15%;">
       <div class="card">
            <div class="card-header">
             
                <div class="card-header-right"> 
                    <ul class="list-unstyled card-option">  
                        <li class="first-opt"><i class="feather icon-chevron-left open-card-option"></i></li> 
                        <li><i class="feather icon-maximize full-card"></i></li>                                                               
                        <li><i class="feather icon-minus minimize-card"></i></li>                                                               
                        <li><i class="feather icon-refresh-cw reload-card"></i></li>                                                              
                        <li><i class="feather icon-trash close-card"></i></li>                                                              
                        <li><i class="feather icon-chevron-left open-card-option"></i></li>                                                         
                    </ul>                                                    
                </div>
            </div>
            <div class="card-block">
           <form method="" id="new_petty_cash">
             <div class="form-group row">
                  <label class="col-sm-3 col-form-label">Name <span class="required">*</span></label>
                  <div class="col-sm-9">
                      <input class="form-control form-control-sm" name="petty_cah_name" required="required">
                  </div>
              </div>
               <div class="form-group row">
                     <label class="col-sm-3 col-form-label">Branch <span class="required">*</span></label>
                     <div class="col-sm-9">
                         <select class="form-control form-control-sm" name="branch">
                             <option value=""> [ Select ]</option>
                             <option value="0"> Gisozi  </option>
                             <option value="1"> Kacyiro </option>
                             <option value="2"> Kagugu  </option>                            
                         </select>
                     </div>
                 </div>
            <div class="form-group row">
                  <label class="col-sm-3 col-form-label">Description <span class="required">*</span></label>
                  <div class="col-sm-9">
                      <textarea class="form-control form-control-sm" name="description" required="true" ></textarea>
                  </div>
              </div>

              <div class="form-group" >
                <div class="col-sm-3">
                    <label class="" style="display: none"></label>
                </div>
               <div class="col-md-6 col-sm-12  col-sm-offset-4" style="margin-left: 35%;">                
                   <button type="submit" class="btn btn-primary btn-sm pull-right" style="margin-left: 15px;">Save</button>
                   <button class="btn btn-danger btn-sm " onclick="resetFunction()"  type="button">Cancel</button>			       
               </div>
           </div>

        </form>
       </div>
   </div>
    </div>
</div>
</div>


<div class="modal fade" tabindex="-1" id="petty_cash_type" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">New Petty Cash Type</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
           <form >
             <div class="form-group row">
                  <label class="col-sm-3 col-form-label">Name </label>
                  <div class="col-sm-9">
                      <input class="form-control form-control-sm" name="bank_name" required="required">
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



<script type="text/javascript">
    function resetFunction() {
    document.getElementById("new_petty_cash").reset();
}
</script>