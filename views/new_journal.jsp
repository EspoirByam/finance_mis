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
       <form id="journal" method="Post" >
           <div class="form-group row">
               <label class="col-sm-3 col-form-label">Memo</label>
               <div class="col-sm-8">
                   <textarea class="form-control form-control-sm"></textarea>
               </div>
           </div>
            <div class="form-group row" id="global_ac">
                 <label class="col-sm-3 col-form-label">Account</label>
                 <div class="col-sm-3">
                     <select name="select" class="form-control form-control-sm">
                         <option class="default">[ SELECT ]</option>
                         <option data-toggle="modal" data-target=""> New</option>
                         <option value="">Account 2</option>
                         <option value="">Account 3</option>
                         <option value="">Account 4</option>                       
                     </select>
                 </div>      
                <div class="col-sm-2">                                               
                   <div class="input-group">
                       <input type="text" name="amount" placeholder="Amount" class="form-control form-control-sm"  >                     
                   </div> 
                </div>                
                <div class="col-sm-4">
                     <div>
                        <label>
                          <input type="radio" name="radio" checked="checked">
                          <i class="helper"></i>Credit
                          <input type="radio" name="radio" checked="checked">
                          <i class="helper"></i>Debit
                        </label>
                      </div>   
                 </div>
             </div> 
           <div class="fields_wrap">
               
           </div>
                <div class="form-group row" id="global_ac">
                 <label class="col-sm-3 col-form-label">Account </label>
                 <div class="col-sm-3">
                     <select name="select" class="form-control form-control-sm">
                         <option class="default">[ SELECT ]</option>
                         <option data-toggle="modal" data-target=""> New</option>
                         <option value="">Account 2</option>
                         <option value="">Account 3</option>
                         <option value="">Account   4</option>                       
                     </select>
                 </div>      
                <div class="col-sm-2">                                               
                   <div class="input-group">
                       <input type="text" name="amount" placeholder="Amount" class="form-control form-control-sm" onpress="return isNumberKey(event)" >                     
                   </div> 
                </div>                
                <div class="col-sm-4">
                     <div>
                        <label>
                          <input type="radio" name="radio1" checked="checked">
                          <i class="helper"></i>Credit
                          <input type="radio" name="radio1" checked="checked">
                          <i class="helper"></i>Debit
                        </label>
                         <i class="fa fa-plus btn-mini btn-primary add" style="margin-left: 15px;"></i>
                      </div>   
                 </div>
             </div> 
           
      
         <div class="form-group row">
            <label class="col-sm-3 col-form-label">Proof</label>
                <div class="col-sm-4">
                    <div class="checkbox-fade fade-in-primary">
                        <label>
                          <input type="checkbox" value="" name="proof" id="proof">
                          
                          <span class="cr">
                            <i class="cr-icon icofont icofont-ui-check txt-primary"></i>
                          </span><span>If not, Leave this</span>
                        </label>
                     </div>
                    
                </div>
            
                <div class="col-sm-5" id="proof_doc" style="display: none">
                    <input name="proof_doc" type="file" >
                </div>           
        </div>
        <div class="form-group" >
            <div class="col-sm-3">
                <label class="" style="display: none"></label>
            </div>
            <div class="col-md-6 col-sm-12  col-sm-offset-4" style="margin-left: 35%;">                
               <button type="submit" name="" id="submit" class="btn btn-primary btn-sm pull-right" style="margin-left: 15px;">Save</button>
               <button class="btn btn-danger btn-sm" onclick="resetFunction()"  type="button">Cancel</button>			       

           </div>
        </div>
         
     </form>
       </div>
   </div>
    </div>
</div>
</div>

<!-- New Account Modal-->
<div class="modal fade" tabindex="-1" id="newAccount" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">New Account</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form >
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Name </label>
                        <div class="col-sm-9">
                            <input class="form-control form-control-sm" name="book_name" id="book_name" required="required">
                        </div>
                    </div>             

                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger btn-sm"  type="button" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary btn-sm" name="" id="save" onclick="myFunction()" style="margin-left: 75%;">Save</button>
            </div>
        </div>
    </div>
</div>

<!--------------------------------------------------------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------------------------------------------------------->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        var max_fields = 5; //maximum input boxes allowed
        var wrapper = $(".fields_wrap"); //Fields wrapper
        var add_button = $(".add"); //Add button ID   
        var x = 1; //initlal text box count
        $(add_button).click(function (e) { //on add input button click
            e.preventDefault();
            if (x < max_fields) { //max input box allowed
                x++; //text box increment
                $(wrapper).append(' <div class="form-group row" id="global_account"> <label class="col-sm-3 col-form-label">Account '+x+'</label> <div class="col-sm-3"> <select name="select'+x+'" id="selectId'+x+'" class="form-control form-control-sm"><option class="default">[ SELECT ]</option> <option data-toggle="modal" data-target=""> New</option> <option value="">Account 2</option> <option value="">Account 3</option> <option value="">Account 4</option></select> </div><div class="col-sm-2"><div class="input-group"> <input type="text" name="amount'+x+'" placeholder="Amount" class="form-control form-control-sm"  >  </div> </div> <div class="col-sm-4"> <div> <label> <input type="radio" name="radio'+x+'" checked="checked"> <i class="helper"></i>Credit <input type="radio" name="radio'+x+'" checked="checked"> <i class="helper"></i>Debit </label><i class="fa fa-times btn-mini btn-danger remove_field" style="margin-left: 15px;"></i> </div> </div> </div> </div>'); //add form
                
                var submit = "submit".concat(x);
               $('save').setAttribute("name", submit);
              
            }
        });
        
        $(wrapper).on("click", ".remove_field", function (e) { //user click on remove text
            e.preventDefault();
            $('#global_account').remove();
            x--;
            $(document).ready(function () {
                update();
            });
        })
        
        
    });
    
</script>

<script type="text/javascript">
    function resetFunction() {
    document.getElementById("journal").reset();
    }
    $('#proof').change( function(){
        
       if($('#proof').is(':checked')){
          
           $('#proof_doc').show()
       } else{
           $('#proof_doc').hide()

       }
    });

</script>
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
   

 </script>