
<div class="pcoded-content">
    <!-- [ breadcrumb ] start -->
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="page-header-title">
                    <i class="feather icon-pie-chart bg-c-blue"></i>
                    <div class="d-inline">
                        <h5>New Account</h5>
                        <span class="text-default"></span>
                    </div>
                </div>
            </div>
             <div class="col-lg-4">
                <div class="page-header-breadcrumb">
                    <ul class=" breadcrumb breadcrumb-title">
                        <li class="breadcrumb-item">
                            <a href="index.jsp?request=home"><i class="feather icon-home"></i></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#!">Chart Of Account</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#!">New Account</a>
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
                
       <form id="newAcc" method="" >
        <div class="form-group row">
               <label class="col-sm-3 col-form-label">Book</label>
               <div class="col-sm-9">
                   <select name="select" class="form-control form-control-sm" id="book">
                       <option class="text-default">[ SELECT ]</option>
                       <option data-toggle="modal" data-target="#newBook"> New</option>
                       <option value="2">Book 2</option>
                       <option value="3">Book 3</option>
                       <option value="4">Book 4</option>                       
                   </select>
               </div>
           </div>
            <div class="form-group row" id="global_acc" style="display: none;" >
                 <label class="col-sm-3 col-form-label">Global Account</label>
                 <div class="col-sm-9">
                     <select name="select" class="form-control form-control-sm">
                         <option class="text-default">[ SELECT ]</option>
                         <option data-toggle="modal" data-target="newAccount"> New</option>
                         <option value="">Account 2</option>
                         <option value="">Account 3</option>
                         <option value="">Account 4</option>                       
                     </select>
                 </div>
             </div> 
            <div class="input_fields_wrap">
                 
            </div> 
          <div class="form-group row" id="acc_name" style="display: none;">
            <label class="col-sm-3 col-form-label" for="acc_name">Sub Acc Name <span class="required">*</span>
             </label>
             <div class="col-sm-9 ">                                               
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
            $(wrapper).append('<div class="form-group row"><label class="col-sm-3 col-form-label">Account Name</label>\
                 <div class="col-sm-9 ">\
                     <select name="select" id="select1" class="form-control form-control-sm">\
                         <option value="" disabled>[ SELECT ]</option> <option value="">Account 2</option><option value="">Account 3</option> <option value="">Account   4</option> </select> </div> <a href="#" style="margin-left: 27%;" class="remove_field btn-mini btn-warning">Remove</a></div>'); //add form
        
        var acc ="submit".concat(x);
        var selec = "select".concat(x);
        document.getElementById('submit').setAttribute("name", acc);
        document.getElementById('select1').setAttribute("name", selec);
        //alert(document.getElementById('select1').attributes["name"].value);
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
<script type="text/javascript">
    function resetFunction() {
    document.getElementById("newAcc").reset();
}


function myFunction() {
    var x = document.getElementById("book");
    var option = document.createElement("option");
    option.text = document.getElementById("book_name").value;
    x.add(option);
    $('#newBook').modal('hide');
    
     function notify(message, type){
        $.growl({
            message: message
        },{
            type: type,
            allow_dismiss: false,
            label: 'Cancel',
            className: 'btn-xs btn-inverse',
            placement: {
                from: 'bottom',
                align: 'right'
            },
            delay: 2500,
            animate: {
                    enter: 'animated fadeInRight',
                    exit: 'animated fadeOutRight'
            },
            offset: {
                x: 30,
                y: 30
            }
        });
    };
    
        notify('Book saved succefully ', 'primary');
}
</script>
 
<!-- New Finance Book Modal-->
<div class="modal fade" tabindex="-1" id="newBook" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">New Finance Book</h4>
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
                 <button type="submit" class="btn btn-primary btn-sm" onclick="myFunction()" style="margin-left: 75%;">Save</button>
            </div>
        </div>
    </div>
</div>
