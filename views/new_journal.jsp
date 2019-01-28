<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="core.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<% 
        Map Cond_getUserUnit = null;
        db con = new db();
        con.connection();
        Connection conn = con.getcon();
    try {
           String tb_finance_sub_account = "finance_sub_account";

        Map Cond_getAllBook = null;
        Cond_getAllBook = new HashMap();
%>
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
        <div class="col-md-10 col-md-offset-0" style="margin-left: 15%;">
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
                                <textarea class="form-control form-control-sm" id="memo"></textarea>
                            </div>
                        </div>
                        <div class="form-group row" id="global_ac">
                            <label class="col-sm-3 col-form-label">Account</label>
                            <div class="col-sm-2">
                                <select name="select" id="selectAcc" class="form-control form-control-sm" onchange="getAccountInfo2(this.value)">
                                  
                                 <option disabled="true" selected="true">[ Select ]</option>
                                    <%
                                  PreparedStatement pst_getSubAcc = conn.prepareStatement("select id,name from finance_sub_account");
                                  ResultSet res_getSubSubAcc = pst_getSubAcc.executeQuery();
                                  
                                  while(res_getSubSubAcc.next())
                                  {
                                      %>
                                      
                                      <option value="<%=res_getSubSubAcc.getInt(1)%>"><%=res_getSubSubAcc.getString(2)%></option>
                                      <%
                                      PreparedStatement pst_getAllSubSubAcc = conn.prepareStatement("select id,name from finance_sub_sub_account where finance_sub_account_id='"+res_getSubSubAcc.getInt(1)+"'");
                                      ResultSet res_getAllSubSubAcc = pst_getAllSubSubAcc.executeQuery();
                                      
                                      while(res_getAllSubSubAcc.next())
                                      {
                                          %>
                                          <option value="<%=res_getAllSubSubAcc.getInt(1)%>"><%=res_getAllSubSubAcc.getString(2)%></option>
                                          <%
                                      }
//                                  res_getAllSubSubAcc.close();
                                  }
//                                res_getSubSubAcc.close();
                            %>                                          
                                </select>
                            </div>      
                            <div class="col-sm-3">                                               
                                <div class="input-group">
                                    <input type="text" name="amount" placeholder="Amount" id="amount1" class="form-control form-control-sm"  >                     
                                </div> 
                            </div>                
                            <div class="col-sm-3">
                                <div>
                                    <label  id="trying2">
                                        <input type="radio" name="radio1" disabled="true">
                                        <i class="helper"></i>Credit
                                        <input type="radio" name="radio1" disabled="true">
                                        <i class="helper"></i>Debit
                                    </label>

                                </div>   

                            </div>
                        </div> 
                        
                        <div class="form-group row" id="global_ac">
                            <label class="col-sm-3 col-form-label">Account </label>
                            <div class="col-sm-2">
                                <select onchange="getAccountInfo(this.value)" class="form-control form-control-sm" name="select" id="selectAcc2">
                                    <option class="default">[ SELECT ]</option>
                                    
                                    <%
                                         %>
                                 <option disabled="true" selected="true">[ Select ]</option>
                                    <%
                                  PreparedStatement pst_getSubAcc2 = conn.prepareStatement("select id,name from finance_sub_account");
                                  ResultSet res_getSubSubAcc2 = pst_getSubAcc2.executeQuery();
                                  
                                  while(res_getSubSubAcc2.next())
                                  {
                                      %>
                                      
                                      <option value="<%=res_getSubSubAcc2.getInt(1)%>"><%=res_getSubSubAcc2.getString(2)%></option>
                                      <%
                                      PreparedStatement pst_getAllSubSubAcc2 = conn.prepareStatement("select id,name from finance_sub_sub_account where finance_sub_account_id='"+res_getSubSubAcc2.getInt(1)+"'");
                                      ResultSet res_getAllSubSubAcc2 = pst_getAllSubSubAcc2.executeQuery();
                                      
                                      while(res_getAllSubSubAcc2.next())
                                      {
                                          %>
                                          <option value="<%=res_getAllSubSubAcc2.getInt(1)%>"><%=res_getAllSubSubAcc2.getString(2)%></option>
                                          <%
                                      }
                                  
                                  }
//conn.close();
                            }catch(Exception e)
                            {
                            out.print(e);
                            }

                                          %>
                                                       
                                </select>
                            </div>      
                            <div class="col-sm-3">                                               
                                <div class="input-group">
                                    <input type="text" name="amount" placeholder="Amount" id="amount2" class="form-control form-control-sm" onpress="return isNumberKey(event)">                     
                                </div> 
                            </div>                
                            <div class="col-sm-3">
                                <div>
                                    <label  id="trying">
                                        <input type="radio" name="radio1" disabled="true">
                                        <i class="helper"></i>Credit
                                        <input type="radio" name="radio1" disabled="true">
                                        <i class="helper"></i>Debit
                                    </label>
                                    <i class="fa fa-plus btn-mini btn-primary add" id="add_account" style="margin-left: 15px;"></i>
                                </div>   
                            </div>
                        </div> 
                        
                        <div class="fields_wrap">

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
                                <button type="button" name="submit0" id="submit" onclick="saveJournal(this.name)" class="btn btn-primary btn-sm pull-right" style="margin-left: 15px;">Save</button>
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
                                $(wrapper).append(' <div class="form-group row" id="global_account"> <label class="col-sm-3 col-form-label">Account ' + x + '</label> <div class="col-sm-2"> <select name="select' + x + '" id="selectId' + x + '" onchange="getDebCred'+x+'(this.value)" class="form-control form-control-sm"><option class="default"></select> </div><div class="col-sm-3"><div class="input-group"> <input type="text" id="id_amount' + x + '" placeholder="Amount" class="form-control form-control-sm"  >  </div> </div> <div class="col-sm-3"> <div id="div_radio' + x + '"> <label id="lab_radio' + x + '"> <input type="radio" name="radio' + x + '" disabled="true"> <i class="helper" ></i>Credit <input type="radio" name="radio' + x + '" disabled="true"> <i class="helper"></i>Debit </label><i class="fa fa-times btn-mini btn-danger remove_field" style="margin-left: 15px;"></i> </div> </div> </div> </div>'); //add form

                                var acc = "submit".concat(x);
                                var add = "add_account".concat(x);
                                $('#add_account').attr('id', add);
                                document.getElementById('submit').setAttribute("name", acc);
                                
                                if(add=="add_account2")
                                {
                                    showAcc3();
                                    
                                }
                                else if(add=="add_account3")
                                {
                                    showAcc4();
                                    
                                }
                                else if(add=="add_account4")
                                {
                                    showAcc5();
                                }
                                else if(add=="add_account5")
                                {
                                    showAcc6();
                                }
                            }
                        });

                        $(wrapper).on("click", ".remove_field", function (e) { //user click on remove text
                            e.preventDefault();
                            $('#global_account').remove();
                            x--;
                            $(document).ready(function () {
                                update();
                            });
                        });


                    });

</script>

<script type="text/javascript">
    
    function resetFunction() {
        document.getElementById("journal").reset();
    }
    $('#proof').change(function () {

        if ($('#proof').is(':checked')) {

            $('#proof_doc').show()
        } else {
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
        }</script>

<script type="text/javascript">

            function isNumberKey(evt){
            var charCode = (evt.which) ? evt.which : event.keyCode
                    if (charCode > 31 && (charCode < 48 || charCode > 57))
                    return false;
                    return true;
            }

    function saveJournal(valeur)
    {
        var submit = valeur;
    if (submit == "submit0")
    {
            var selectAcc = document.getElementById("selectAcc").value;
            var selectAcc2 = document.getElementById("selectAcc2").value;
            var deb_cred_value = "";
            var deb_cred_value2 = "";
            var amount = parseFloat(document.getElementById("amount1").value,10);
            var amount2 = parseFloat(document.getElementById("amount2").value,10);
            var memo = document.getElementById("memo").value;
            var amount_final1= 0;
            var amount_final2= 0;
            var proof = false;
            var action = "insert";
           
            
            if (document.getElementById('debit2').checked) {
                deb_cred_value = document.getElementById('debit2').value;
                }
                else if (document.getElementById('credit2').checked)
                {
                deb_cred_value = document.getElementById('credit2').value;
                }

                if (document.getElementById('debit').checked) {
                deb_cred_value2 = document.getElementById('debit').value;
                }
                else if (document.getElementById('credit').checked)
                {
                deb_cred_value2 = document.getElementById('credit').value;
                }

                if (document.getElementById("proof").checked){
                proof = true;
            }
///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////First Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            var former_amount1 = parseFloat(document.getElementById("former_amount").value,10);
            var former_cred_deb1 = parseFloat(document.getElementById("former_deb_cred").value,10);
            
            if(former_cred_deb1 == deb_cred_value)
            {
                amount_final1 = amount + former_amount1;
                parseFloat(amount_final1,10);
            }
            else
            {
                amount_final1 = former_amount1 - amount;
                parseFloat(amount_final1,10);
            }
            
///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////  2nd Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            var former_amount2 = parseFloat(document.getElementById("former_amount2").value,10);
            var former_cred_deb2 = parseFloat(document.getElementById("former_deb_cred2").value,10);
            
            if(former_cred_deb2 == deb_cred_value2)
            {
                amount_final2 = former_amount2 + amount2;
                parseFloat(amount_final2,10);
            }
            else
            {
                amount_final2 = former_amount2 - amount2;
                parseFloat(amount_final2,10);
            }

            
    /*to initialize the http request*/
    var xhttp = new XMLHttpRequest();
            /* to check the status  and the sate of the request  after executing the request for displaying a execution msg*/
            xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
            resetFunction();
                    var msg = this.responseText;
                    var ms = msg.trim();
                    if (ms == 'success')
            {
            notify("Operation Done Successfully!", 'success');
            }
            else
            {
            notify("Operation Failled, Try Later!", 'danger');
            }
            }
            };
            /*open the http request with the Method and the sever page*/
            xhttp.open("POST", "class/journal_controller.jsp", true);
            /*to define the Request header*/
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); //
            /*to define the parameters to be held in the request*/
            xhttp.send("selectAcc=" + selectAcc + "&deb_cred_value=" + deb_cred_value + "&memo=" + memo + "&selectAcc2="
                    + selectAcc2 + "&deb_cred_value2=" + deb_cred_value2 + "&amount=" + amount + "&action=" + action + "&proof=" + proof + "&amount2=" + amount2+"&amount_final2="+amount_final2+"&amount_final1="+amount_final1);
//          alert(amount_final1);
    } 
    else if (submit == "submit2")
    {
            //first account informations variable
            var selectAcc = document.getElementById("selectAcc").value;
            var amount = parseFloat(document.getElementById("amount1").value,10);
            var deb_cred_value = "";
            
            //second account informations variable
            var selectAcc2 = document.getElementById("selectAcc2").value;
            var amount2 = parseFloat(document.getElementById("amount2").value,10);
            var deb_cred_value2 = "";
            
            //third account informations variable
            var selectId3 = document.getElementById("selectId2").value;
            var amount3 = parseFloat(document.getElementById("id_amount2").value,10);
            var deb_cred_value3 = "";
            
            //get debit credit informations on each of three accounts
                //1st acc
                if (document.getElementById('debit2').checked) {
                deb_cred_value = document.getElementById('debit2').value;
                }
                else if (document.getElementById('credit2').checked)
                {
                deb_cred_value = document.getElementById('credit2').value;
                }
                //2nd acc
                if (document.getElementById('debit').checked) {
                deb_cred_value2 = document.getElementById('debit').value;
                }
                else if (document.getElementById('credit').checked)
                {
                deb_cred_value2 = document.getElementById('credit').value;
                }
                //3rd acc
                if(document.getElementById('debit3').checked)
                {
                   deb_cred_value3 = document.getElementById('debit3').value;
                }
                else if(document.getElementById('credit3').checked)
                {
                    deb_cred_value3 = document.getElementById('credit3').value;
                }

///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////First Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            var former_amount1 = parseFloat(document.getElementById("former_amount").value,10);
            var former_cred_deb1 = document.getElementById("former_deb_cred").value;
            var amount_final1=0;
            
            if(former_cred_deb1 == deb_cred_value)
            {
                amount_final1 = amount + former_amount1;
                parseFloat(amount_final1,10);
            }
            else
            {
                amount_final1 = former_amount1-amount;
                parseFloat(amount_final1,10);
            }
            
///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////  2nd Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            var former_amount2 = parseFloat(document.getElementById("former_amount2").value,10);
            var former_cred_deb2 = document.getElementById("former_deb_cred2").value;
            var amount_final2 = 0;
            
            if(former_cred_deb2 == deb_cred_value2)
            {
                amount_final2 = former_amount2 + amount2;
                parseFloat(amount_final2,10);
            }
            else
            {
                amount_final2 = former_amount2 - amount2;
                parseFloat(amount_final2,10)
            }
/////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////third account ///////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
            var former_amount3 = parseFloat(document.getElementById("former_amount3").value,10);
            var former_cred_deb3 = document.getElementById("former_deb_cred3").value;
            var amount_final3 =0;
            
            if(former_cred_deb3 == deb_cred_value3)
            {
                amount_final3 = former_amount3 + amount3;
                parseFloat(amount_final3,10);
            }
            else
            {
                amount_final3 = former_amount3 - amount3;
                parseFloat(amount_final3,10);
            }
            
            
            
            
            //Journal line informations variable
            var memo = document.getElementById("memo").value;
            var proof = false;
            var action = "insert2";
            
            //get the proof
            if (document.getElementById("proof").checked){
                proof = true;
            }
            
            /*to initialize the http request*/
            var xhttp = new XMLHttpRequest();
            /* to check the status  and the sate of the request  after executing the request for displaying a execution msg*/
            xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
            resetFunction();
                    var msg = this.responseText;
                    var ms = msg.trim();
                    if (ms == 'success')
            {
            notify("Operation Done Successfully!", 'success');
            }
            else
            {
            notify("Operation Failled, Try Later!", 'danger');
            }
            }
            };
            /*open the http request with the Method and the sever page*/
            xhttp.open("POST", "class/journal_controller.jsp", true);
            /*to define the Request header*/
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); //
            /*to define the parameters to be held in the request*/
            xhttp.send("selectAcc=" + selectAcc + "&deb_cred_value=" + deb_cred_value + "&memo=" + memo + "&selectAcc2="
                    + selectAcc2 + "&deb_cred_value2=" + deb_cred_value2 + "&amount=" + amount + "&action=" + action + "&proof=" + proof +
                    "&amount2=" + amount2 +"&selectId3="+selectId3 +"&amount3="+amount3+"&deb_cred_value3="+deb_cred_value3+"&amount_final1="+amount_final1+"&amount_final2="+amount_final2+
                    "&amount_final3="+amount_final3);
            
            
//
        }
    else if (submit == "submit3")
    {
            //first account informations variable
            var selectAcc = document.getElementById("selectAcc").value;
            var amount = parseFloat(document.getElementById("amount1").value,10);
            var deb_cred_value = "";
            
            //second account informations variable
            var selectAcc2 = document.getElementById("selectAcc2").value;
            var amount2 = parseFloat(document.getElementById("amount2").value,10);
            var deb_cred_value2 = "";
            
            //third account informations variable
            var selectId3 = document.getElementById("selectId2").value;
            var amount3 = parseFloat(document.getElementById("id_amount2").value,10);
            var deb_cred_value3 = "";
            
            //fourth account informations variables
            var selectId4 = document.getElementById("selectId3").value;
            var amount4 = parseFloat(document.getElementById("id_amount3").value,10);
            var deb_cred_value4 = ""; 
            
            //get debit credit informations on each of four accounts
                
                //1st acc
                if (document.getElementById('debit2').checked) {
                deb_cred_value = document.getElementById('debit2').value;
                }
                else if (document.getElementById('credit2').checked)
                {
                deb_cred_value = document.getElementById('credit2').value;
                }
                //2nd acc
                if (document.getElementById('debit').checked) {
                deb_cred_value2 = document.getElementById('debit').value;
                }
                else if (document.getElementById('credit').checked)
                {
                deb_cred_value2 = document.getElementById('credit').value;
                }
                //3rd acc
                if(document.getElementById('debit3').checked)
                {
                   deb_cred_value3 = document.getElementById('debit3').value;
                }
                else if(document.getElementById('credit3').checked)
                {
                    deb_cred_value3 = document.getElementById('credit3').value;
                }
                //4th acc
                if(document.getElementById('debit4').checked)
                {
                    deb_cred_value4 = document.getElementById('debit4').value;  
                }
                else if(document.getElementById('credit4').checked)
                {
                    deb_cred_value4 = document.getElementById('credit4').value;
                }
            
            
///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////First Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            var former_amount1 = parseFloat(document.getElementById("former_amount").value,10);
            var former_cred_deb1 = document.getElementById("former_deb_cred").value;
            var amount_final1=0;
            
            if(former_cred_deb1 == deb_cred_value)
            {
                amount_final1 = amount + former_amount1;
                parseFloat(amount_final1,10);
            }
            else
            {
                amount_final1 = former_amount1-amount   ;
                parseFloat(amount_final1,10);
            }
            
///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////  2nd Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////  2nd Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            var former_amount2 = parseFloat(document.getElementById("former_amount2").value,10);
            var former_cred_deb2 = document.getElementById("former_deb_cred3").value;
            var amount_final2 = 0;
            
            if(former_cred_deb2 == deb_cred_value2)
            {
                amount_final2 = former_amount2 + amount2;
                parseFloat(amount_final2,10);
            }
            else
            {
                amount_final2 = former_amount2 - amount2;
                parseFloat(amount_final2,10);
            }
/////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////third account ///////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
            var former_amount3 = parseFloat(document.getElementById("former_amount3").value,10);
            var former_cred_deb3 = document.getElementById("former_deb_cred3").value;
            var amount_final3 =0;
            
            if(former_cred_deb3 == deb_cred_value3)
            {
                amount_final3 = former_amount3 + amount3;
                parseFloat(amount_final3,10);
            }
            else
            {
                amount_final3 = former_amount3 - amount3;
                parseFloat(amount_final3,10);
            }
///////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////Fourth account /////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
            
            var former_amount4 = parseFloat(document.getElementById("former_amount4").value,10);
            var former_cred_deb4 = document.getElementById("former_deb_cred4").value;
            var amount_final4 =0;
            
            if(former_cred_deb4 == deb_cred_value4)
            {
                amount_final4 = former_amount4 + amount4;
                parseFloat(amount_final4,10);
            }
            else
            {
                amount_final4 = former_amount4 - amount4;
                parseFloat(amount_final4,10)
            }
            
            //Journal line informations variable
            var memo = document.getElementById("memo").value;
            var proof = false;
            var action = "insert3";
            
            //get the proof
            if (document.getElementById("proof").checked){
                proof = true;
            }
            /*to initialize the http request*/
            var xhttp = new XMLHttpRequest();
            /* to check the status  and the sate of the request  after executing the request for displaying a execution msg*/
            xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
            resetFunction();
                    var msg = this.responseText;
                    var ms = msg.trim();
                    if (ms == 'success')
            {
            notify("Operation Done Successfully!", 'success');
            }
            else
            {
            notify("Operation Failled, Try Later!", 'danger');
            }
            }
            };
            /*open the http request with the Method and the sever page*/
            xhttp.open("POST", "class/journal_controller.jsp", true);
            /*to define the Request header*/
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); //
            /*to define the parameters to be held in the request*/
            xhttp.send("selectAcc=" + selectAcc + "&deb_cred_value=" + deb_cred_value + "&memo=" + memo + "&selectAcc2="
                    + selectAcc2 + "&deb_cred_value2=" + deb_cred_value2 + "&amount=" + amount + "&action=" + action + "&proof=" + proof +
                    "&amount2=" + amount2 +"&selectId3="+selectId3 +"&amount3="+amount3+"&deb_cred_value3="+deb_cred_value3+
                    "&selectId4="+selectId4+"&amount4="+amount4+"&deb_cred_value4="+deb_cred_value4+"&amount_final1="+amount_final1+
                    "&amount_final2="+amount_final2+"&amount_final3="+amount_final3+"&amount_final4="+amount_final4);
       
        }
    else if (submit == "submit4")
    {
        
            //first account informations variable
            var selectAcc = document.getElementById("selectAcc").value;
            var amount = parseFloat(document.getElementById("amount1").value,10);
            var deb_cred_value = "";
            
            //second account informations variable
            var selectAcc2 = document.getElementById("selectAcc2").value;
            var amount2 = parseFloat(document.getElementById("amount2").value,10);
            var deb_cred_value2 = "";
            
            //third account informations variable
            var selectId3 = document.getElementById("selectId2").value;
            var amount3 = parseFloat(document.getElementById("id_amount2").value,10);
            var deb_cred_value3 = "";
            
            //fourth account informations variables
            var selectId4 = document.getElementById("selectId3").value;
            var amount4 = parseFloat(document.getElementById("id_amount3").value,10);
            var deb_cred_value4 = ""; 
            
            //firth acount informations variables
            var selectId5 = document.getElementById("selectId4").value;
            var amount5 = parseFloat(document.getElementById("id_amount4").value,10);
            var deb_cred_value5 = "";
            
            //get debit credit informations on each of four accounts
                
                //1st acc
                if (document.getElementById('debit2').checked) {
                deb_cred_value = document.getElementById('debit2').value;
                }
                else if (document.getElementById('credit2').checked)
                {
                deb_cred_value = document.getElementById('credit2').value;
                }
                //2nd acc
                if (document.getElementById('debit').checked) {
                deb_cred_value2 = document.getElementById('debit').value;
                }
                else if (document.getElementById('credit').checked)
                {
                deb_cred_value2 = document.getElementById('credit').value;
                }
                //3rd acc
                if(document.getElementById('debit3').checked)
                {
                   deb_cred_value3 = document.getElementById('debit3').value;
                }
                else if(document.getElementById('credit3').checked)
                {
                    deb_cred_value3 = document.getElementById('credit3').value;
                }
                //4th acc
                if(document.getElementById('debit4').checked)
                {
                    deb_cred_value4 = document.getElementById('debit4').value;  
                }
                else if(document.getElementById('credit4').checked)
                {
                    deb_cred_value4 = document.getElementById('credit4').value;
                }
                //firth acc
                if(document.getElementById('debit5').checked)
                {
                    deb_cred_value5 = document.getElementById('debit5').value;
                }
                else if(document.getElementById('credit5').checked)
                {
                    deb_cred_value5 = document.getElementById('credit5').value;
                }
     
///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////First Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            var former_amount1 = parseFloat(document.getElementById("former_amount").value,10);
            var former_cred_deb1 = document.getElementById("former_deb_cred").value;
            var amount_final1=0;
            
            if(former_cred_deb1 == deb_cred_value)
            {
                amount_final1 = amount + former_amount1;
                parseFloat(amount_final1,10);
            }
            else
            {
                amount_final1 = former_amount1-amount   ;
                parseFloat(amount_final1,10);
            }
            
///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////  2nd Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////  2nd Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            var former_amount2 = parseFloat(document.getElementById("former_amount2").value,10);
            var former_cred_deb2 = document.getElementById("former_deb_cred3").value;
            var amount_final2 = 0;
            
            if(former_cred_deb2 == deb_cred_value2)
            {
                amount_final2 = former_amount2 + amount2;
                parseFloat(amount_final2,10);
            }
            else
            {
                amount_final2 = former_amount2 - amount2;
                parseFloat(amount_final2,10)
            }
            
/////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////third account ///////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
            var former_amount3 = parseFloat(document.getElementById("former_amount3").value,10);
            var former_cred_deb3 = document.getElementById("former_deb_cred3").value;
            var amount_final3 =0;
            
            if(former_cred_deb3 == deb_cred_value3)
            {
                amount_final3 = former_amount3 + amount3;
                parseFloat(amount_final3,10);
            }
            else
            {
                amount_final3 = former_amount3 - amount3;
                parseFloat(amount_final3,10);
            }
///////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////Fourth account /////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
            
            var former_amount4 = parseFloat(document.getElementById("former_amount4").value,10);
            var former_cred_deb4 = document.getElementById("former_deb_cred4").value;
            var amount_final4 =0;
            
            if(former_cred_deb4 == deb_cred_value4)
            {
                amount_final4 = former_amount4 + amount4;
                parseFloat(amount_final4,10);
            }
            else
            {
                amount_final4 = former_amount4 - amount4;
                parseFloat(amount_final4,10);
            }
            
///////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////Firth account /////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
            
            var former_amount5 = parseFloat(document.getElementById("former_amount5").value,10);
            var former_cred_deb5 = document.getElementById("former_deb_cred4").value;
            var amount_final5 =0;
            
            if(former_cred_deb5 == deb_cred_value5)
            {
                amount_final5 = former_amount5 + amount5;
                parseFloat(amount_final5,10);
            }
            else
            {
                amount_final5 = former_amount5 - amount5;
                parseFloat(amount_final5,10);
            }
      
            //Journal line informations variable
            var memo = document.getElementById("memo").value;
            var proof = false;
            var action = "insert4";
            
            
            //get the proof
            if (document.getElementById("proof").checked){
                proof = true;
            }
            
            /*to initialize the http request*/
            var xhttp = new XMLHttpRequest();
            /* to check the status  and the sate of the request  after executing the request for displaying a execution msg*/
            xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
            resetFunction();
                    var msg = this.responseText;
                    var ms = msg.trim();
            if (ms == 'success')
            {
            notify("Operation Done Successfully!", 'success');
            }
            else
            {
            notify("Operation Failled, Try Later!", 'danger');
            }
            }
            };
            /*open the http request with the Method and the sever page*/
            xhttp.open("POST", "class/journal_controller.jsp", true);
            /*to define the Request header*/
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); //
            /*to define the parameters to be held in the request*/
            xhttp.send("selectAcc=" + selectAcc + "&deb_cred_value=" + deb_cred_value + "&memo=" + memo + "&selectAcc2="
                    + selectAcc2 + "&deb_cred_value2=" + deb_cred_value2 + "&amount=" + amount + "&action=" + action + "&proof=" + proof +
                    "&amount2=" + amount2 +"&selectId3="+selectId3 +"&amount3="+amount3+"&deb_cred_value3="+deb_cred_value3+
                    "&selectId4="+selectId4+"&amount4="+amount4+"&deb_cred_value4="+deb_cred_value4+
                    "&selectId5="+selectId5+"&amount5="+amount5+"&deb_cred_value5="+deb_cred_value5+"&amount_final1="+amount_final1+
                    "&amount_final2="+amount_final2+"&amount_final3="+amount_final3+"&amount_final4="+amount_final4+
                    "&amount_final5="+amount_final5);
            
      
}
    else if (submit == "submit5")
    {
        
            //first account informations variable
            var selectAcc = document.getElementById("selectAcc").value;
            var amount = parseFloat(document.getElementById("amount1").value,10);
            var deb_cred_value = "";
            
            //second account informations variable
            var selectAcc2 = document.getElementById("selectAcc2").value;
            var amount2 = parseFloat(document.getElementById("amount2").value,10);
            var deb_cred_value2 = "";
            
            //third account informations variable
            var selectId3 = document.getElementById("selectId2").value;
            var amount3 = parseFloat(document.getElementById("id_amount2").value,10);
            var deb_cred_value3 = "";
            
            //fourth account informations variables
            var selectId4 = document.getElementById("selectId3").value;
            var amount4 = parseFloat(document.getElementById("id_amount3").value,10);
            var deb_cred_value4 = ""; 
            
            //firth acount informations variables
            var selectId5 = document.getElementById("selectId4").value;
            var amount5 = parseFloat(document.getElementById("id_amount4").value,10);
            var deb_cred_value5 = "";
            
            //sixth acount informations variables
            var selectId6 = document.getElementById("selectId5").value;
            var amount6 = parseFloat(document.getElementById("id_amount5").value,10);
            var deb_cred_value6 = "";
            
            
//            deb_cred_value6
            //get debit credit informations on each of four accounts
                
                //1st acc
                if (document.getElementById('debit2').checked) {
                deb_cred_value = document.getElementById('debit2').value;
                }
                else if (document.getElementById('credit2').checked)
                {
                deb_cred_value = document.getElementById('credit2').value;
                }
                //2nd acc
                if (document.getElementById('debit').checked) {
                deb_cred_value2 = document.getElementById('debit').value;
                }
                else if (document.getElementById('credit').checked)
                {
                deb_cred_value2 = document.getElementById('credit').value;
                }
                //3rd acc
                if(document.getElementById('debit3').checked)
                {
                   deb_cred_value3 = document.getElementById('debit3').value;
                }
                else if(document.getElementById('credit3').checked)
                {
                    deb_cred_value3 = document.getElementById('credit3').value;
                }
                //4th acc
                if(document.getElementById('debit4').checked)
                {
                    deb_cred_value4 = document.getElementById('debit4').value;  
                }
                else if(document.getElementById('credit4').checked)
                {
                    deb_cred_value4 = document.getElementById('credit4').value;
                }
                //firth acc
                if(document.getElementById('debit5').checked)
                {
                    deb_cred_value5 = document.getElementById('debit5').value;
                }
                else if(document.getElementById('credit5').checked)
                {
                    deb_cred_value5 = document.getElementById('credit5').value;
                }
                
                //sixth acc
                if(document.getElementById('debit6').checked)
                {
                    deb_cred_value6 = document.getElementById('debit6').value;
                }
                else if(document.getElementById('credit6').checked)
                {
                    deb_cred_value6 = document.getElementById('credit6').value;
                }
                
     
///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////First Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            var former_amount1 = parseFloat(document.getElementById("former_amount").value,10);
            var former_cred_deb1 = document.getElementById("former_deb_cred").value;
            var amount_final1=0;
            
            if(former_cred_deb1 == deb_cred_value)
            {
                amount_final1 = amount + former_amount1;
                parseFloat(amount_final1,10);
                
            }
            else
            {
                amount_final1 = former_amount1-amount   ;
                parseFloat(amount_final1,10);
            }
            
//            alert("ok");
///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////  2nd Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////  2nd Account Informations Former/////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
            var former_amount2 = parseFloat(document.getElementById("former_amount2").value,10);
            var former_cred_deb2 = document.getElementById("former_deb_cred3").value;
            var amount_final2 = 0;
            
            if(former_cred_deb2 == deb_cred_value2)
            {
                amount_final2 = former_amount2 + amount2;
                parseFloat(amount_final2,10);
            }
            else
            {
                amount_final2 = former_amount2 - amount2;
                parseFloat(amount_final2,10);
            }
/////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////third account ///////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
            var former_amount3 = parseFloat(document.getElementById("former_amount3").value,10);
            var former_cred_deb3 = document.getElementById("former_deb_cred3").value;
            var amount_final3 =0;
            
            if(former_cred_deb3 == deb_cred_value3)
            {
                amount_final3 = former_amount3 + amount3;
                parseFloat(amount_final3,10);
            }
            else
            {
                amount_final3 = former_amount3 - amount3;
                parseFloat(amount_final3,10);
            }
///////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////Fourth account /////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
            
            var former_amount4 = parseFloat(document.getElementById("former_amount4").value,10);
            var former_cred_deb4 = document.getElementById("former_deb_cred4").value;
            var amount_final4 =0;
            
            if(former_cred_deb4 == deb_cred_value4)
            {
                amount_final4 = former_amount4 + amount4;
                parseFloat(former_cred_deb4,10);
            }
            else
            {
                amount_final4 = former_amount4 - amount4;
                parseFloat(former_cred_deb4,10);
            }
///////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////Firth account /////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
            
            var former_amount5 = parseFloat(document.getElementById("former_amount5").value,10);
            var former_cred_deb5 = document.getElementById("former_deb_cred5").value;
            var amount_final5 =0;
            
            if(former_cred_deb5 == deb_cred_value5)
            {
                amount_final5 = former_amount5 + amount5;
                parseFloat(amount_final5,10)
            }
            else
            {
                amount_final5 = former_amount5 - amount5;
                parseFloat(amount_final5,10);
            }
            
///////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////sxth account /////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
            
            var former_amount6 = parseFloat(document.getElementById("former_amount6").value,10);
            var former_cred_deb6 = document.getElementById("former_deb_cred6").value;
            var amount_final6 =0;
            
            if(former_cred_deb6 == deb_cred_value6)
            {
                amount_final6 = former_amount6 + amount6;
                parseFloat(amount_final6,10);
            }
            else
            {
                amount_final6 = former_amount6 - amount6;
                parseFloat(amount_final6,10);
            }
              
//            
            //Journal line informations variable
            var memo = document.getElementById("memo").value;
            var proof = false;
            var action = "insert5";
            
            
            //get the proof
            if (document.getElementById("proof").checked){
                proof = true;
            }
            
            /*to initialize the http request*/
            var xhttp = new XMLHttpRequest();
            /* to check the status  and the sate of the request  after executing the request for displaying a execution msg*/
            xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
            resetFunction();
                    var msg = this.responseText;
                    var ms = msg.trim();
                    if (ms == 'success')
            {
            notify("Operation Done Successfully!", 'success');
            }
            else
            {
            notify("Operation Failled, Try Later!", 'danger');
            }
            }
            };
            
            
            /*open the http request with the Method and the sever page*/
            xhttp.open("POST", "class/journal_controller.jsp", true);
            /*to define the Request header*/
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); //
            /*to define the parameters to be held in the request*/
            xhttp.send("selectAcc=" + selectAcc + "&deb_cred_value=" + deb_cred_value + "&memo=" + memo + "&selectAcc2="
                    + selectAcc2 + "&deb_cred_value2=" + deb_cred_value2 + "&amount=" + amount + "&action=" + action + "&proof=" + proof +
                    "&amount2=" + amount2 +"&selectId3="+selectId3 +"&amount3="+amount3+"&deb_cred_value3="+deb_cred_value3+
                    "&selectId4="+selectId4+"&amount4="+amount4+"&deb_cred_value4="+deb_cred_value4+
                    "&selectId5="+selectId5+"&amount5="+amount5+"&deb_cred_value5="+deb_cred_value5+"&amount_final1="+amount_final1+
                    "&amount_final2="+amount_final2+"&amount_final3="+amount_final3+"&amount_final4="+amount_final4+
                    "&amount_final5="+amount_final5+"&amount_final6="+amount_final6+
                    "&amount6="+amount6+"&selectId6="+selectId6+"&deb_cred_value6="+deb_cred_value6);
//           alert("ok"); 
////alert(submit);
    }
    
    }
    <%
    conn.close();
    %>

</script>
