<div class="pcoded-content">
    <!-- [ breadcrumb ] start -->
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="page-header-title">
                    <i class="feather icon-pie-chart bg-c-blue"></i>
                    <div class="d-inline">
                        <h5>New Account</h5>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <!-- [ breadcrumb ] end -->
    <div class="pcoded-inner-content">
   <div class="col-md-8">
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
     <form >
        <div class="form-group row">
               <label class="col-sm-3 col-form-label">Book</label>
               <div class="col-sm-9">
                   <select name="select" class="form-control form-control-sm" id="book">
                       <option value="" disabled="true">[ SELECT ]</option>
                       <option value=""> New</option>
                       <option value="2">Book 2</option>
                       <option value="3">Book 3</option>
                       <option value="4">Book 4</option>                       
                   </select>
               </div>
           </div>
            <div class="form-group row" id="global_acc" style="display: none;">
                 <label class="col-sm-3 col-form-label">Global Account</label>
                 <div class="col-sm-9">
                     <select name="select" class="form-control form-control-sm">
                         <option value="" disabled="true">[ SELECT ]</option>
                         <option value=""> New</option>
                         <option value="">Account 2</option>
                         <option value="">Account 3</option>
                         <option value="">Account   4</option>                       
                     </select>
                 </div>
             </div> 
         
          <div class="form-group row" id="acc_name" style="display: none;">
            <label class="col-sm-3 col-form-label" for="acc_name">Account Name <span class="required">*</span>
             </label>
             <div class="col-sm-9 input_fields_wrap">                                               
                <div class="input-group">
                 <input type="text" id="contactid" name="acc_name" required="required" class="form-control form-control-sm">
                     <span class="input-group-btn">
                          <button type="button" class="btn btn-sm btn-primary add_field_button">Sub</button>
                      </span>
               </div> 
             </div>
           </div> 
         <div class="form-group row">
            <label class="col-sm-3 col-form-label">Reconciliation</label>
                <div class="col-sm-9">
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
   </div>
    </div>
</div>

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
            $(wrapper).append('<div><input name="sub_account" type="text" onkeyup="update()" class="form-control col-md-12" required="required"/>\
			 <input type="hidden">\
		<a href="#" class="remove_field">Remove</a></div>'); //add form
        }
    });
   
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
        $(document).ready(function() {update();});
    })
    
});

        document.getElementById('book').addEventListener('change', function () {
        var style = this.value == 2 ? 'block' : 'none';
        document.getElementById('global_acc').style.display = style;
        document.getElementById('acc_name').style.display = style;
    });
 </script>