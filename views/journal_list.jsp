<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="core.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
Map Cond_getJournalLineInfo = null;
Cond_getJournalLineInfo = new HashMap();
Map Cond_getFiscalYear = null;
Cond_getFiscalYear = new HashMap();
Map Data_getFiscalYear = null;
Data_getFiscalYear = new HashMap();
Map Data_getDebCred = null;
Data_getDebCred = new HashMap();
Map Cond_getDebCred = null;
Cond_getDebCred = new HashMap();
Map Data_getNameAccount = null;
Data_getNameAccount = new HashMap();
Map Cond_getNameAccount = null;
Cond_getNameAccount = new HashMap();
Map Data_getCred = null;
Data_getCred = new HashMap();
Map Cond_getCred = null;
Cond_getCred = new HashMap();
String tb_finance_journal_line ="finance_journal_line";
String tb_finance_fiscal_year = "finance_fiscal_year";
String tb_finance_journal_line_account = "finance_journal_line_account";
String tb_finance_sub_account = "finance_sub_account";
try
    {
    db con= new db();
    con.connection();
    Connection conn = con.getcon();
%>
<style>
    table{
        font-weight: 450;
    }
</style>

<div class="pcoded-content">

    <div class="pcoded-inner-content">
     <div class="card">
       <div class="card-block"> 
              <!-- Default ordering table start -->
            <div class="card">
                <div class="card-header">
                    <h5>Journal Entries</h5>
                </div>
                <div class="card-block">
                    <div class="row">
                    <div class="col-md-10 ml-20">
                    <div class="dt-responsive table-responsive">
                           <%
                           PreparedStatement pst_getJournalLineInfo = conn.prepareStatement("select id, memo, date, fiscalyear from finance_journal_line");
                           ResultSet get_journalLineInfo = pst_getJournalLineInfo.executeQuery();
                           String fiscal_year = "";
                           
                           String acc_name = "ACCOUNT No";
                           String deb = "DEBIT";
                           String cre = "CREDIT";
                           
                           while(get_journalLineInfo.next())
                           {
                               PreparedStatement getFiscalYear = conn.prepareStatement("select name from finance_fiscal_year where id ='"+get_journalLineInfo.getInt(4)+"'");
                              
                               ResultSet res_getFiscalYear = getFiscalYear.executeQuery();
                               while(res_getFiscalYear.next())
                               {
                                   fiscal_year = res_getFiscalYear.getString(1);
                               }
                               %>
                           <table width="750" border="2" align="center">
                       
                           <tr bgcolor="#CCFFCC">
                                <td width="93" bgcolor="#CCFFCC" style="border-width: 2; padding: 2;"><p></p>
                                    <p align="center" style=" width:   20px; height: 13px;"><strong><%=acc_name%></strong></p>
                                  </td>
                                <td width="276" style="border-width: 2; padding: 2;  "><div align="center"><strong><%=get_journalLineInfo.getInt(1)%><strong>/</strong><%=get_journalLineInfo.getDate(3)%><strong>/</strong><%=fiscal_year%></strong></div>
                                </td>
                                <td width="73" bordercolor="#000000" bgcolor="#CCFFCC" style="border-width: 2; padding: 2; "><div align="center"><strong><%=deb%></strong></div>
                                </td>
                                <td width="73" bordercolor="#000000" bgcolor="#CCFFCC" style="border-width: 2; padding: 2; "><div align="center"><strong><%=cre%></strong></div>
                                </td>
                                <td width="73" bordercolor="#000000" bgcolor="#CCFFCC" style="border-width: 2; padding: 2; "><div align="center"><strong>Actions</strong></div></td>
                            </tr>
                            <%
                                double amount = 0;
                                String name= "";
                                String cond = "debit";
                                PreparedStatement pst_getDebCre = conn.prepareStatement("select amount, finance_sub_account_id from finance_journal_line_account where dev_creb = '"+cond+"' AND finance_journal_line_id ='"+get_journalLineInfo.getInt(1)+"'");
                                ResultSet res_getDebCred = pst_getDebCre.executeQuery();
                                while(res_getDebCred.next()){
                                    
                                    amount = res_getDebCred.getDouble(1);
                                        
                                    PreparedStatement prep_getAccountNameFromSub = conn.prepareStatement("select name from finance_sub_account where id ='"+res_getDebCred.getInt(2)+"'");
                                    ResultSet res_getAccountNameFromSub = prep_getAccountNameFromSub.executeQuery();
                                    
                                    PreparedStatement prep_getAccountNameFromSubSub = conn.prepareStatement("select name from finance_sub_sub_account where id = '"+res_getDebCred.getInt(2)+"'");
                                    ResultSet res_getAccountNameFromSubSub = prep_getAccountNameFromSubSub.executeQuery();
                                    
                                    if(res_getAccountNameFromSub.next())
                                    {
                                            name = res_getAccountNameFromSub.getString(1);
                                    }else if(res_getAccountNameFromSubSub.next())
                                    {
                                            name = res_getAccountNameFromSubSub.getString(1);
                                    }
                                        
                                        %>
                                            <tr bgcolor="#99FFFF">
                                                <td width="93" bgcolor="#CCCCCC" style="border-width: 2; padding: 2; width:   20px; "><div align="center"><%=res_getDebCred.getInt(2)%></div></td>
                                                <td width="276" bgcolor="#CCCCCC" style="border-width: 2; padding: 2; width:   20px; "><%=name%></td>
                                                <td width="73" bgcolor="#CCCCCC" style="border-width: 2; padding: 2;  width:   20px;"><div align="right"><%=amount%></div></td>
                                                <td width="73" bordercolor="#FFFF99" bgcolor="#FFFFCC" style="border-width: 2; padding: 2; width:   20px; "><div align="right"></div></td>
                                                 <td width="73" colspan="2" bgcolor="#FFFFCC">                                    
                                                     <a href="#!" title="Update" data-toggle="modal" data-target="#update-operation" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                                     <a href="#!" class="deleteConfirm" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                                 </td>
                                            </tr>
                                        <%
                                }
                                String credit = "credit";
                                PreparedStatement pst_getCred = conn.prepareStatement("select amount, finance_sub_account_id from finance_journal_line_account where dev_creb ='"+credit+"'");
                                
                                ResultSet res_getCred = pst_getCred.executeQuery();
                                while(res_getCred.next()){
                                    
                                    amount = res_getCred.getDouble(1);
                                        
                                    PreparedStatement prep_getAccountNameFromSub = conn.prepareStatement("select name from finance_sub_account where id ='"+res_getCred.getInt(2)+"'");
                                    ResultSet res_getAccountNameFromSub = prep_getAccountNameFromSub.executeQuery();
                                    
                                    PreparedStatement prep_getAccountNameFromSubSub = conn.prepareStatement("select name from finance_sub_sub_account where id = '"+res_getCred.getInt(2)+"'");
                                    ResultSet res_getAccountNameFromSubSub = prep_getAccountNameFromSubSub.executeQuery();
                                    
                                    if(res_getAccountNameFromSub.next())
                                    {
                                            name = res_getAccountNameFromSub.getString(1);
                                    }else if(res_getAccountNameFromSubSub.next())
                                    {
                                            name = res_getAccountNameFromSubSub.getString(1);
                                    }
                                    prep_getAccountNameFromSub.close();
                                        
                                        %>
                                            <tr  bgcolor="#99FFFF">
                                              <td width="93" bgcolor="#CCCCCC" style="border-width: 2; padding: 2; "><div align="center">101000</div></td>
                                              <td width="276" bgcolor="#CCCCCC" style="border-width: 2; padding: 2; "><div align="right"><%=name%></div></td>
                                              <td width="73" bordercolor="#FFFFCC" bgcolor="#FFFFCC" style="border-width: 2; padding: 2; "><div align="right"></div></td>
                                              <td width="73" bgcolor="#CCCCCC" style="border-width: 2; padding: 2; "><div align="right"><%=amount%></div></td>
                                            </tr>
                                        <%
                                }
                                %>
                           </table>
                                <%
                           acc_name = "";
                           deb = "";
                           cre = "";
                           }
                           %>
                    </div>
                    </div>
                    <div class="col-md-2">                               
                         <a class="btn btn-mini pull-left" sytle="color: white;" href="#"> <img src="images/excel.png"/> Export</a>      
                         <a class="btn btn-mini pull-left" sytle="color: white;" href="#"> <img src="images/pdf.png"/> Export</a>               
                    </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
    <%
        }catch(ClassNotFoundException e)
        {
            out.print(e);
        } 
    %>   


<!--Update Operation Modal --> 
<div class="modal fade" id="update-operation" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update Operation</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
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
<!-- End Update Operation Modal --> 

<!--Update Operation 2 Modal --> 
<div class="modal fade" id="update-operation2" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update Operation</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                 <form id="journal" method="Post" >
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Memo</label>
                                <div class="col-sm-8">
                                    <textarea class="form-control form-control-sm"></textarea>
                                </div>
                            </div>
                             <div class="form-group row" id="account1">
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
                                          
                                       </div>   
                                  </div>
                              </div> 

                           <div class="form-group row" id="account1">
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
                          <div class="form-group row">
                             <label class="col-sm-3 col-form-label">Proof</label>
                                 <div class="col-sm-4">
                                     <div class="checkbox-fade fade-in-primary">
                                         <label>
                                           <input type="checkbox" value="" name="proof" id="proof">

                                           <span class="cr">
                                             <i class="cr-icon icofont icofont-ui-check txt-primary"></i>
                                           </span><span>Add</span>
                                         </label>
                                      </div>

                                 </div>

                                 <div class="col-sm-5" id="proof_doc" >
                                     <input name="proof_doc" type="file" >
                                 </div>           
                         </div>
                         <div class="form-group" >
                             <div class="col-sm-3">
                                 <label class="" style="display: none"></label>
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
<!-- End Update Operation Modal --> 