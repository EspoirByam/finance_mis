<div class="pcoded-content">
    <!-- [ breadcrumb ] start -->
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="page-header-title">
                    <i class="feather icon-clipboard bg-c-blue"></i>
                    <div class="d-inline">
                        <h5>New Journal</h5>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <!-- [ breadcrumb ] end -->
 <div class="pcoded-inner-content">
   <div class="col-md-8 col-md-offset-3" style="margin-left: 15%;">
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
               <label class="col-sm-3 col-form-label">Memo</label>
               <div class="col-sm-9">
                   <textarea class="form-control form-control-sm">                      
                   </textarea>
               </div>
           </div>
            <div class="form-group row" id="global_ac">
                 <label class="col-sm-3 col-form-label">Account</label>
                 <div class="col-sm-3">
                     <select name="select" class="form-control form-control-sm">
                         <option value="" disabled="true">[ SELECT ]</option>
                         <option value=""> New</option>
                         <option value="">Account 2</option>
                         <option value="">Account 3</option>
                         <option value="">Account   4</option>                       
                     </select>
                 </div>
                 
                    <label class="col-sm-3 col-form-label" for="acc_name">Amount <span class="required">*</span>
                     </label>
                     <div class="col-sm-3 ">                                               
                        <div class="input-group">
                            <input type="text" name="amount" class="form-control form-control-sm" onpress="return isNumberKey(event)" >                     
                        </div> 
                     </div>
                
                 <div class="col-sm-3">
                     <div class="radio radiofill radio-primary radio-inline">
                        <label>
                          <input type="radio" name="radio" checked="checked">
                          <i class="helper"></i>Credit
                        </label>
                      </div>
                     <div class="radio radiofill radio-primary radio-inline">
                        <label>
                          <input type="radio" name="radio" checked="checked">
                          <i class="helper"></i>Debit
                        </label>
                      </div>
                 </div>
             </div> 
         
          <div class="form-group row" id="acc_nam" >
            <label class="col-sm-3 col-form-label" for="acc_name">Amount <span class="required">*</span>
             </label>
             <div class="col-sm-9 ">                                               
                <div class="input-group">
                    <input type="text" name="amount" class="form-control form-control-sm" onpress="return isNumberKey(event)" >                     
                </div> 
             </div>
           </div> 
         <div class="form-group row">
            <label class="col-sm-3 col-form-label">Proof</label>
                <div class="col-sm-4">
                    <div class="checkbox-fade fade-in-primary">
                        <label>
                          <input type="checkbox" value="" id="proof">
                          <span class="cr">
                            <i class="cr-icon icofont icofont-ui-check txt-primary"></i>
                          </span><span>If not, Leave this field </span>
                        </label>
                     </div>
                </div>
            <div class="col-sm-5" id="proof_doc" style="display: non;">
                    <input name="proof_doc" type="file"/>
                </div>            
            </div>
         
            <div class="form-group" >
                <div class="col-sm-3">
                    <label class="" style="display: none"></label>
                </div>
            <div class="col-sm-9 col-xs-12 col-sm-offset-3">
                <button type="submit" class="btn btn-primary btn-sm pull-right" style="margin-left: 15px;">Save</button>
                <button class="btn btn-danger btn-sm pull-right"  type="button">Cancel</button>						       
                
            </div>
        </div>
         
     </form>
       </div>
   </div>
    </div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script type="text/javascript">
  document.getElementById('proof').addEventListener('change', function(){
       
        var proof_doc = $("#proof_doc");
        
    checkbox.change(function() {
   
    if (document.getElementById('proof').is(':checked')) {
      // Show the hidden fields.
      document.getElementById('proof_doc').style.display = style;
    } else {
      
      document.getElementById('proof').style.display = none;
    }
    });
</script>

<script type="text/javascript">
     
 function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}    
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