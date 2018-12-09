<div class="pcoded-content">
    <!-- [ breadcrumb ] start -->
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="page-header-title">
                    <i class="feather icon-map bg-c-blue"></i>
                    <div class="d-inline">
                        <h5>New eCash</h5>
                    </div>
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
                        <li class="breadcrumb-item"><a href="index.jsp?request=bank_list" title="Bank List">eCash</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#!">New eCash </a>
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
           <form method="" id="new_ecash">
             <div class="form-group row">
                  <label class="col-sm-3 col-form-label">Name <span class="required">*</span></label>
                  <div class="col-sm-9">
                      <input class="form-control form-control-sm" name="petty_cah_name" autocomplete="off" required="required">
                  </div>
              </div>
               <div class="form-group row">
                     <label class="col-sm-3 col-form-label">Account No<span class="required">*</span></label>
                     <div class="col-sm-9">
                         <input class="form-control form-control-sm " autocomplete="off" type="text" value="" name="acc_no">
                     </div>
                 </div>
               <div class="form-group row">
                     <label class="col-sm-3 col-form-label">Branch <span class="required">*</span></label>
                     <div class="col-sm-9">
                         <select class="form-control form-control-sm" name="branch" autocomplete="off">
                             <option value=""> [ Select ]</option>
                             <option value="0"> Gisozi  </option>
                             <option value="1"> Kacyiro </option>
                             <option value="2"> Kagugu  </option>                            
                         </select>
                     </div>
                 </div>
                <div class="form-group row">
                     <label class="col-sm-3 col-form-label">Type <span class="required">*</span></label>
                     <div class="col-sm-9">
                         <select class="form-control form-control-sm" name="ecash_type">
                             <option value=""> [ Select ]</option>
                             <option value="0"> Mobile Money  </option>
                             <option value="1"> Eazy Bank </option>
                             <option value="2"> Tigo cash </option>                            
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

<script type="text/javascript">
    function resetFunction() {
    document.getElementById("new_ecash").reset();
}
</script>