
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="core.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
try
{
    db con= new db();
    con.connection();
    Connection conn = con.getcon();
    
    Map Cond_getAllBook = null;
    Cond_getAllBook = new HashMap();
    
    Map Cond_getMainAccount = null;
    Cond_getMainAccount = new HashMap();
    
    Map Data_getMainAccount = null;
    Data_getMainAccount = new HashMap();
     
     String tb_finance_book_section_main_account = "finance_book_section_main_account";
    
    String tb_finance_book = "finance_book";
%>
<style>
    .table tr {
    cursor: pointer;
}
.hiddenRow {
    padding: 0 4px !important;
    background-color: #eeeeee;
    font-size: 13px;
}

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
                                <%
                                    int idSubAccount = 0;
                                    int idMainAccount =0;
                                    String name = "";
                                    String nameMainAcc = "";
                                    int finance_book_id =0;
                                    int finance_book_section_id = 0;
                                    String book_name = "";
                                    String deb_cred = "";
                                    int code = 0;
                                    double amount = 0;
                                    int book_id =0;
                                    int category = 0;
                                    String nameSubAccount = "";
                                    int sub_account = 0;
                                    String sub_acc_name = "";
                                    Boolean reconciliation = false;
                                    
                                    PreparedStatement pst_getSubSubAccount = conn.prepareStatement("select id,code,category,amount,sub_account,finance_sub_account_id from finance_sub_sub_account");
                                    ResultSet res_getSubSubAccount = pst_getSubSubAccount.executeQuery();
                                    
                                    while(res_getSubSubAccount.next())
                                    {
                                        idSubAccount = res_getSubSubAccount.getInt(6);
                                        code = res_getSubSubAccount.getInt(2);
                                        amount = res_getSubSubAccount.getDouble(4);
                                        category = res_getSubSubAccount.getInt(3);
                                        sub_account = res_getSubSubAccount.getInt(5);
                                        
                                        PreparedStatement pst_getSubAccName = conn.prepareStatement("select name from finance_sub_sub_account where id='"+sub_account+"'");
                                        ResultSet res_getSubAccName = pst_getSubAccName.executeQuery();
                                        
                                        while(res_getSubAccName.next())
                                        {
                                            sub_acc_name = res_getSubAccName.getString(1);
                                        }
                                        
                                        PreparedStatement pst_getSubAccountName = conn.prepareStatement("select name from finance_sub_sub_account where id = '"+idSubAccount+"'");
                                        ResultSet res_getSubAccountName = pst_getSubAccountName.executeQuery();
                                        
                                        while(res_getSubAccountName.next())
                                        {
                                            nameSubAccount = res_getSubAccountName.getString(1);
                                        }
                                        
                                        PreparedStatement pst_getSubAccount = conn.prepareStatement("select name,finance_book_section_main_account_id, reconciliation from finance_sub_account where code = '"+code+"'");
                                        ResultSet res_getSubAccount = pst_getSubAccount.executeQuery();
                                        
                                        while(res_getSubAccount.next())
                                        {
                                            name = res_getSubAccount.getString(1);
                                            idMainAccount = res_getSubAccount.getInt(2);
                                            reconciliation = res_getSubAccount.getBoolean(3);
                                            
                                            PreparedStatement pst_getMainAccount = conn.prepareStatement("select finance_book_section_id, finance_book_id,name from finance_book_section_main_account where id = '"+idMainAccount+"'");
                                            ResultSet res_getMainAccount = pst_getMainAccount.executeQuery();
                                            
                                            while(res_getMainAccount.next())
                                            {
                                                nameMainAcc = res_getMainAccount.getString(3);
                                                finance_book_id = res_getMainAccount.getInt(2);
                                                finance_book_section_id = res_getMainAccount.getInt(1);
                                                
                                                PreparedStatement pst_getBookNameId = conn.prepareStatement("select id, name from finance_book where id = '"+finance_book_id+"'");
                                                ResultSet res_getBookNameId = pst_getBookNameId.executeQuery();
                                                
                                                while(res_getBookNameId.next())
                                                {
                                                    book_name = res_getBookNameId.getString(2);
                                                    book_id = res_getBookNameId.getInt(1);
                                                }
                                                
                                                PreparedStatement pst_getDebCred = conn.prepareStatement("select deb_cre_default from finance_book_section where id='"+finance_book_section_id+"'");
                                                ResultSet res_getDebCred = pst_getDebCred.executeQuery();
                                                
                                                while(res_getDebCred.next())
                                                {
                                                    deb_cred = res_getDebCred.getString(1);
                                                }
                                            
                                                %>
                                            <tr>
                                                <th scope="row">&nbsp;<%=code%></th>
                                                <td><%=name%></td>
                                                <td>$<%=amount%></td>
                                                <td><%=deb_cred%></td>
                                                <td>                                        
                                                  <a href="#!" title="Update" data-toggle="modal" data-target="#update_account_<%=res_getSubSubAccount.getInt(1)%>" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                                  <a title="Delete" onclick="deleteAccount(<%=res_getSubSubAccount.getInt(1)%>,<%=res_getSubSubAccount.getDouble(4)%>)" ><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                                </td>
                                            </tr>
<div class="modal fade" id="update_account_<%=res_getSubSubAccount.getInt(1)%>" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update Account</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                 <form >
        <div class="form-group row">
               <label class="col-sm-3 col-form-label">Book</label>
               <div class="col-sm-9">
                   <select name="select" onchange="up_showMainAcc(this.value)" class="form-control form-control-sm" id="up_book">
                       
                               <option value="<%=book_id%>"><%=book_name%></option>
                                <%
                           PreparedStatement pst_getAllBook = conn.prepareStatement("select id, name from finance_book");
                           ResultSet resgetAllBook = pst_getAllBook.executeQuery();
                                        
                                while(resgetAllBook.next())
                                {
                                %>
                                <option value="<%=resgetAllBook.getInt(1)%>"><%=resgetAllBook.getString(2)%></option>
                                <%
                                }
                                %>                                 
                   </select>
               </div>
           </div>
            <div class="form-group row" id="up_global_acc" >
                 <label class="col-sm-3 col-form-label">Global Account</label>
                 <div class="col-sm-9">
                     <select name="select" class="form-control form-control-sm">
                         <option value="<%=idMainAccount%>"><%=nameMainAcc%></option>
                <%
                Cond_getMainAccount.put("select", "id,name");
                Data_getMainAccount.put("finance_book_id",book_id);
                Cond_getMainAccount.put("where",Data_getMainAccount);
                
                ResultSet resgetMainAccount = con.getrows(tb_finance_book_section_main_account, Cond_getMainAccount);
                
                while(resgetMainAccount.next())
                { %>
                <option value="<%=resgetMainAccount.getInt(1)%>"><%=resgetMainAccount.getString(2)%></option>
            
                <%
                }
                %>
                     </select>
                 </div>
             </div> 
             
              <%
              if(category == 2){
              %>     
              <div class="form-group row" id="up_global_acc" >
                 <label class="col-sm-3 col-form-label">Account Name</label>
                 <div class="col-sm-9">
                     <select name="select" class="form-control form-control-sm">
                         <option value=""><%=nameSubAccount%></option>
                         <option value="">uesnjlgdf</option>
                     </select>
                 </div>
             </div> 
             <%
             }
            else if(category == 3)
            {
            %>
             <div class="form-group row" id="up_global_acc" >
                 <label class="col-sm-3 col-form-label">Account Name</label>
                 <div class="col-sm-9">
                     <select name="select" class="form-control form-control-sm">
                         <option value=""><%=nameSubAccount%></option>
                         <option value="">uesnjlgdf</option>
                     </select>
                 </div>
             </div> 
             <div class="form-group row" id="up_global_acc" >
                 <label class="col-sm-3 col-form-label">Account Name</label>
                 <div class="col-sm-9">
                     <select name="select" class="form-control form-control-sm">
                         <option value=""><%=sub_acc_name%></option>
                         <option value="">uesnjlgdf</option>
                     </select>
                 </div>
             </div> 
            <%
             }
             %>
            <div class="input_fields_wrap">
               
            </div> 
          <div class="form-group row" id="acc_name" >
            <label class="col-sm-3 col-form-label" for="acc_name">Sub Acc Name <span class="required">*</span>
             </label>
             <div class="col-sm-9 ">                                               
                <div class="input-group">
                    <input type="text" id="contactid" name="acc_name" required="required" value="<%=name%>" class="form-control form-control-sm">
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
                            <%
                            if(reconciliation==true)
                            {
                                %>
                                <input type="checkbox" value="" checked="checked">
                                <%
                            }else
                            {
                                %>
                                <input type="checkbox" value="">
                                <%
                            }
                            
                            %>
                          
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
                                            
                                                <%
                                                
                                            
                                            }  
                                        }
                                    
                                    }
                                    
                                }catch(ClassNotFoundException e)
                                {
                                out.print(e);
                                } 
                                %>
                            </tbody>
                        </table>
                    </div>   
                </div>
                <div class="tab-pane" id="profile7" role="tabpanel">
                   <table class="table table-condensed table-xs table-hover table-responsive" style="border-collapse:collapse;">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Date</th>
                                <th>Description</th>
                                <th>Credit</th>
                                <th>Debit</th>
                                <th>Balance</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr data-toggle="collapse" data-target="#demo1" class="accordion-toggle">
                                <td>1</td>
                                <td>05 May 2013</td>
                                <td>Credit Account</td>
                                <td class="text-primary">$150.00</td>
                                <td class="text-error"></td>
                                <td class="text-primary">$150.00</td>
                            </tr>
                            <tr id="demo1" class="hiddenRow collapse">
                                <td class="hiddenRow">
                                    <div class="accordian-body collapse" > Demo Content1 </div>
                                </td>
                                <td class="hiddenRow "><div class="accordian-body collapse"> Demo Content1.1 </div></td>
                                <td class="hiddenRow "><div class="accordian-body collapse" > 05 May 2013 </div></td>
                                <td class="hiddenRow "><div class="accordian-body collapse" > Credit Account </div></td>
                                <td class="hiddenRow text-primary"><div class="accordian-body collapse" >$150.00</div></td>
                                <td class="hiddenRow text-error"></td>
                                <td class="hiddenRow text-primary"><div class="accordian-body collapse" >$150.00</div></td>
                            </tr>

                            <tr data-toggle="collapse" data-target="#demo2" class="accordion-toggle">
                                <td>2</td>
                                <td>05 May 2013</td>
                                <td>Credit Account</td>
                                <td class="text-primary">$11.00</td>
                                <td class="text-error"></td>
                                <td class="text-primary">$161.00</td>
                            </tr>
                            <tr>
                                <td colspan="6" class="hiddenRow"><div id="demo2" class="accordian-body collapse">Demo Content2</div></td>
                            </tr>

                            <tr data-toggle="collapse" data-target="#demo3" class="accordion-toggle">
                                <td>3</td>
                                <td>05 May 2013</td>
                                <td>Credit Account</td>
                                <td class="text-primary">$500.00</td>
                                <td class="text-error"></td>
                                <td class="text-primary">$661.00</td>
                            </tr>
                            <tr>
                                <td colspan="6"  class="hiddenRow"><div id="demo3" class="accordian-body collapse">Demo Content3</div></td>
                            </tr>

                            <tr data-toggle="collapse" data-target="#demo4" class="accordion-toggle">
                                <td>4</td>
                                <td>05 May 2013</td>
                                <td>Credit Account</td>
                                <td class="text-primary">$500.00</td>
                                <td class="text-error"></td>
                                <td class="text-primary">$661.00</td>
                            </tr>
                            <tr>
                                <td colspan="6"  class="hiddenRow"><div id="demo4" class="accordian-body collapse">Demo Content4</div></td>
                            </tr>

                            <tr data-toggle="collapse" data-target="#demo5" class="accordion-toggle">
                                <td>5</td>
                                <td>05 May 2013</td>
                                <td>Credit Account</td>
                                <td class="text-primary">$500.00</td>
                                <td class="text-error"></td>
                                <td class="text-primary">$661.00</td>
                            </tr>
                            <tr>
                                <td colspan="6"  class="hiddenRow"><div id="demo5" class="accordian-body collapse">Demo Content5</div></td>
                            </tr>		
                        </tbody>
                    </table>
                    
                    
                </div>              
            </div>
       </div>

    </div>
</div>
    

<div class="modal fade" id="modal-12" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Account Detail</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                  <table id="simpletable" class="table table-hover table-bordered table-xs col-sm-10">
                    <thead>
                        <tr>
                            <th>Account Name</th>
                            <th>Account Name</th>
                            <th>Amount</th>
                            <th>Default</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">5400024311</th>
                            <td>Salary</td>
                            <td>200,000,000</td>
                            <td>Credit</td>
                           
                        </tr>
                        <tr>
                            <th scope="row">5400044112</th>
                            <td>Expenses</td>
                            <td>300,000,000</td>
                            <td>Debit</td>
                        </tr>
                        <tr>
                            <th scope="row">5400045113</th>
                            <td>Loan</td>
                            <td>122,332,000</td>
                            <td>Credit</td>
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
<!--    
<button type="button" class="btn btn-primary waves-effect" data-toggle="modal" data-target="#large-Modal">Large</button> -->
  


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
            $(wrapper).append('<div class="form-group row"><label class="col-sm-3 col-form-label">Account Name</label>\
                 <div class="col-sm-9 ">\
                     <select name="select" class="form-control form-control-sm">\
                         <option value="" disabled>[ SELECT ]</option> <option value="">Account 2</option><option value="">Account 3</option> <option value="">Account   4</option> </select> </div> <a href="#" style="margin-left: 27%;" class="remove_field btn-mini btn-warning">Remove</a></div>'); //add form
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
 <script>
    
function deleteAccount(id, amount)
{
    if (confirm("Do you really want to delete this component?")) {

    var id = id;
    var amount = amount;
    var btnaction ="delete";
    
  /*to initialize the http request*/
       var xhttp = new XMLHttpRequest();

      /* to check the status  and the sate of the request  after executing the request for displaying a execution msg*/
 xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
    var msg = this.responseText;
     var ms=msg.trim();
    
    if(ms == 'success')
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
  xhttp.open("POST", "class/chart_of_account_controller.jsp", true);
  /*to define the Request header*/ 
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");//
  /*to define the parameters to be held in the request*/
  xhttp.send("action=" + btnaction + "&id=" + id+"&amount="+amount);
   
   }         
}
     
 </script>
    
    