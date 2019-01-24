<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <head>
        <title>Finance-Management-System</title>    
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link href="../files/bower_components/bootstrap-daterangepicker/css/daterangepicker.css" rel="stylesheet" type="text/css"/>
        <!-- Favicon icon -->

        <!-- Google font-->   

        <!-- Required Fremwork -->
        <link rel="stylesheet" type="text/css" href="files/bower_components/bootstrap/css/bootstrap.min.css">

        <!-- waves.css -->

        <!-- feather icon -->
        <link rel="stylesheet" type="text/css" href="files/assets/icon/feather/css/feather.css">
        <!-- font-awesome-n -->
        <link rel="stylesheet" type="text/css" href="files/assets/css/font-awesome-n.min.css">

        <!-- Style.css -->
        <link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="files/assets/css/widget.css">
        <!-- Notification.css -->
        <link rel="stylesheet" type="text/css" href="files/assets/pages/notification/notification.css">
        <!-- Animate.css -->
        <link rel="stylesheet" type="text/css" href="files/bower_components/animate.css/css/animate.css">


        <!-- ico font -->
        <link rel="stylesheet" type="text/css" href="files/assets/icon/icofont/css/icofont.css">
        <!-- font awesome -->
        <link rel="stylesheet" type="text/css" href="files/assets/icon/font-awesome/css/font-awesome.min.css">
        <!-- Switch component css -->
        <link rel="stylesheet" type="text/css" href="files/bower_components/switchery/css/switchery.min.css">
        <!-- Tags css -->

        <!-- Style.css -->
        <link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="files/assets/css/pages.css">
        <!-- Data Table Css -->

        <!-- animation nifty modal window effects css -->


        <style>
            table  {
                font-family: aroma;
                font-size: 12px;
            }
            table .th {
                font-weight: bold;
            }
            table .icon{
                size: 12px !important;
            }

            #overlay{
                position:fixed;
                z-index:99999;
                top:0;
                left:0;
                bottom:0;
                right:0;
                background: #263544;
                transition: 1s 0.4s;
            }
            #progress{
                height:1px;
                background:#fff;
                position:absolute;
                width:0;
                top:50%;
            }
            #progstat{
                font-size:0.7em;
                letter-spacing: 3px;
                position:absolute;
                top:50%;
                margin-top:-40px;
                width:100%;
                text-align:center;
                color:#fff;
            }
        </style>


    
    <script type="text/javascript">
        function showMainAcc(str) {
                  if (str=="") {
                    document.getElementById("global_acc").innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("global_acc").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_main_account.jsp?key="+str,true);
                  xmlhttp.send();
                }
                
        function showBookSection(str) {
                    
                  if (str=="") {
                    document.getElementById("finance_book_section_id").innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("finance_book_section_id").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_book_section.jsp?key="+str,true);
                  xmlhttp.send();
                }
                
        function showSubBookSection(str) {
                  
                  if (str=="") {
                    document.getElementById("finance_book_sub_section_id").innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("finance_book_sub_section_id").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_sub_section.jsp?key="+str,true);
                  xmlhttp.send();
                }
                
        function showSubAccount(global_acc) {
//                    var global_acc = document.getElementById("global_acc").value;
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("select1").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/select_sub_account.jsp?key="+global_acc,true);
                  xmlhttp.send();
                 
                }
                // journal
                
                //get specific accounts
                
        function showSubSubAccCat1(idsubaccount)
                {
                 if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("select2").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/select_sub_sub_account_category_1.jsp?key="+idsubaccount,true);
                  xmlhttp.send();
                }
                
                function upshowBookSection(idBook,idPr)
                {
                    if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_finance_book_section_id_"+idPr).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/get_book_section.jsp?key="+idBook,true);
                  xmlhttp.send();    
                }
                function upshowSubBookSection(idBookSection,idPr)
                {
                    if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_finance_book_sub_section_id_"+idPr).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/get_book_sub_section.jsp?key="+idBookSection,true);
                  xmlhttp.send();    
                }
                
function showSubSubAccCat2(idSubSubAcc)
                {
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("select3").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/select_sub_sub_account_category_2.jsp?key="+idSubSubAcc,true);
                  xmlhttp.send();
                }
                
function showAcc3()
                {
                   if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("selectId2").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_select_accounts_journal.jsp",true);
                  xmlhttp.send();    
                }
                
function getDebCred2(idAccount3)
                {
                    if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("lab_radio2").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_cre_deb3.jsp?key="+idAccount3,true);
                  xmlhttp.send();    
                }
                
function showAcc4()
                {
                    
                   if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("selectId3").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_select_accounts_journal.jsp",true);
                  xmlhttp.send();   
                }
                
function getDebCred3(idAccount4)
                {
                    if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("lab_radio3").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_cre_deb4.jsp?key="+idAccount4,true);
                  xmlhttp.send();    
                }
                
function showAcc5()
                {
                     if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("selectId4").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_select_accounts_journal.jsp",true);
                  xmlhttp.send();
                }
                
function getDebCred4(idAccount5)
                {
                    if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("lab_radio4").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_cre_deb5.jsp?key="+idAccount5,true);
                  xmlhttp.send();
                }
                
function showAcc6()
                {
                      if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("selectId5").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_select_accounts_journal.jsp",true);
                  xmlhttp.send();
                    
                }
                
function getDebCred5(idAccount6)
                {
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("lab_radio5").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_cre_deb6.jsp?key="+idAccount6,true);
                  xmlhttp.send();
                }
       
    </script>
    <!--Jurnal showing-->
    <script>
        
        function getAccountInfo(idAccount)
        {
           if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("trying").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_cre_deb.jsp?key="+idAccount,true);
                  xmlhttp.send();    
        }
        
        function getAccountInfo2(idAccount)
        {
           if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("trying2").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_cre_deb2.jsp?key="+idAccount,true);
                  xmlhttp.send();    
        }
    </script>
    
    <script>
        function up_showMainAcc(id)
        {
            if (id=="") {
                    document.getElementById("up_global_acc").innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_global_acc").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_main_account.jsp?key="+id,true);
                  xmlhttp.send(); 
        }
    </script>
    
    <script>
        function getMainAcc(idBook,idAcc)
        {
                  if (idBook=="") {
                    document.getElementById("up_main_account_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_main_account_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_main_account.jsp?key="+idBook,true);
                  xmlhttp.send(); 
        }
        
        function getMainAcc2(idBook,idAcc)
        {
            if (idBook=="") {
                    document.getElementById("up_main_account2_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_main_account2_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_main_account.jsp?key="+idBook,true);
                  xmlhttp.send();
            
        }
        
        //update chart of account level2
        
        function show_main_account_balance_sheet_level_1(idBook,idAcc)
        {
             if (idBook=="") {
                    document.getElementById("up_main_account_level_1_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_main_account_level_1_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_main_account.jsp?key="+idBook,true);
                  xmlhttp.send();
        }
        
        function show_sub_account_balance_sheet_level_1(idMainAccount,idSubAcc)
        {
            if (idMainAccount=="") {
                    document.getElementById("up_sub_account_level_1_"+idSubAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_sub_account_level_1_"+idSubAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_sub_account.jsp?key="+idMainAccount,true);
                  xmlhttp.send();
            
        }
        
        function get_main_account_bs_level_2(idBook,idAcc)
        {
                 if (idBook=="") {
                    document.getElementById("up_main_account_bs_level_2_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_main_account_bs_level_2_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_main_account.jsp?key="+idBook,true);
                  xmlhttp.send();
        }
        
        function get_sub_account_bs_level_2(idMainAcc,idAcc)
        {
             if (idMainAcc=="") {
                    document.getElementById("up_sub_account_level_2_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_sub_account_level_2_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_sub_account.jsp?key="+idMainAcc,true);
                  xmlhttp.send();
        }
        
        function get_sub_sub_bs_acc_level_2(idSubAcc,idAcc)
        {
            if (idSubAcc=="") {
                    document.getElementById("up_sub_sub_account_level_2_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_sub_sub_account_level_2_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_select2_combo.jsp?key="+idSubAcc,true);
                  xmlhttp.send();
        }
        
        function get_global_acc_bs_level_3(idBook,idAcc)
        {
            if (idBook=="") {
                    document.getElementById("up_main_account_level_12_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_main_account_level_12_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_main_account_combo.jsp?key="+idBook,true);
                  xmlhttp.send();  
            
        }
        
        function get_sub_acc_bs_level_3(idMainAcc,idAcc)
        {
            if (idMainAcc=="") {
                    document.getElementById("up_sub_account_level_123_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_sub_account_level_123_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_sub_account.jsp?key="+idMainAcc,true);
                  xmlhttp.send();
        }
        
        function get_all_sub_sub_bs_level_3(idSubAccount,idAcc)
        {
            if (idSubAccount=="") {
                    document.getElementById("up_sub_account_level_321_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_sub_account_level_321_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_select2_combo.jsp?key="+idSubAccount,true);
                  xmlhttp.send();
        }
        
        function get_sub_account_bs_category_2(idSubAcc,idAcc)
        {
            if (idSubAcc=="") {
                    document.getElementById("up_sub_account_level_4321_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("up_sub_account_level_4321_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/get_sub_acc_cat3.jsp?key="+idSubAcc,true);
                  xmlhttp.send();
            
        }
        
        function show_main_account_ist_level_1(idBook,idAcc)
        {
            if (idBook=="") {
                    document.getElementById("inc_up_main_account_level_1_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("inc_up_main_account_level_1_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_main_account.jsp?key="+idBook,true);
                  xmlhttp.send();
        }
        
        function incshow_sub_account_level_1(idMain,idAcc)
        {
            
            if (idMain=="") {
                    document.getElementById("inc_up_sub_account_level_1_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("inc_up_sub_account_level_1_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_sub_account.jsp?key="+idMain,true);
                  xmlhttp.send();
            
        }
        
        function incget_main_account_level_2(idBook,idAcc)
        {
            if (idBook=="") {
                    document.getElementById("inc_up_main_account_level_2_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("inc_up_main_account_level_2_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_main_account.jsp?key="+idBook,true);
                  xmlhttp.send();
        }
        
        function incget_sub_account_level_2(idMain, idAcc)
        {
          if (idMain=="") {
                    document.getElementById("inc_up_sub_account_level_2_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("inc_up_sub_account_level_2_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_sub_account.jsp?key="+idMain,true);
                  xmlhttp.send();  
        }
        
        function incget_sub_sub_acc_level_2(idMain,idAcc)
        {
            if (idMain=="") {
                    document.getElementById("inc_up_sub_account_level_3_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("inc_up_sub_sub_account_level_2_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_sub_account.jsp?key="+idMain,true);
                  xmlhttp.send();
            
        }
        
        function get_global_acc_level_3(idBook,idAcc)
        {
          if (idBook=="") {
                    document.getElementById("incup_main_account_level_3_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("incup_main_account_level_3_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_main_account.jsp?key="+idBook,true);
                  xmlhttp.send();  
        }
        
        function incget_sub_acc_level_3(idMain,idAcc)
        {
            if (idMain=="") {
                    document.getElementById("incup_sub_account_level_3_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("incup_sub_account_level_3_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_sub_account.jsp?key="+idMain,true);
                  xmlhttp.send();  
        }
        
        function incget_all_sub_sub_level_3(idMain,idAcc)
        {
            if (idMain=="") {
                    document.getElementById("incup_sub_account_level_3_1_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("incup_sub_account_level_3_1_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_sub_account.jsp?key="+idMain,true);
                  xmlhttp.send();  
        }
        
        function incget_sub_account_category_2(idMain,idAcc)
        {
            if (idMain=="") {
                    document.getElementById("incup_sub_account_level_3_2_"+idAcc).innerHTML="";
                    return;
                  }
                  if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("incup_sub_account_level_3_2_"+idAcc).innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/fill_combo_sub_account.jsp?key="+idMain,true);
                  xmlhttp.send();  
        }

function searchtJournal()
 {
    var from = document.getElementById("from").value;
    var to = document.getElementById("to").value;
    var fiscal_year_request = document.getElementById("fiscal_year_request").value;
    
    if(from==''|| to=='')
    {
        from = document.getElementById("the_first").value;
        to = document.getElementById("today").value;
        
    }
     
            if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("corps_journal").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/journal_search.jsp?from="+from+"&to="+to+"&fiscal_year_request="+fiscal_year_request,true);
                  xmlhttp.send();  
     
 }   
 function searchIncome()
 {
     var fromInc = document.getElementById("fromInc").value;
     var toInc = document.getElementById("toInc").value;
     
     if(fromInc==''|| toInc=='')
    {
        fromInc = document.getElementById("theFirstInc").value;
        toInc = document.getElementById("toDayInc").value;   
    }
    
    if (window.XMLHttpRequest) {
                   xmlhttp=new XMLHttpRequest();
                  } 
                  else 
                  {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function() {
                    if (this.readyState==4 && this.status==200) {
                      document.getElementById("income_statement_show").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/incomes_search.jsp?fromInc="+fromInc+"&toInc="+toInc,true);
                  xmlhttp.send();  
     
 }       
        
    </script>
    
    <style>
        table  {
             font-family: aroma;
             font-size: 12px;
        }
        table .th {
            font-weight: bold;
        }
        table .icon{
            size: 12px !important;
        }
   </style>
   <script>
    
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
            delay: 3500,
            animate: {
                    enter: 'animated fadeInRight',
                    exit:  'animated fadeOutRight'
            },
            offset: {
                x: 70,
                y: 30
            }
        });
    }
    
       
    
</script>
</head>

<body>
    <!-- [ Pre-loader ] start -->
   
    <!-- [ Pre-loader ] end -->
    <div id="pcoded" class="pcoded">
       
        <div class="pcoded-container navbar-wrapper">
            <!-- [ Header ] start -->
            <jsp:include page="header.jsp"/>
         

            <!-- [ chat messages dropdown ] start -->
          
            <!-- [ chat message ] end -->
   <div class="pcoded-main-container">
                    <div class="pcoded-wrapper">
                        <!-- [ navigation menu side_bar ] start -->
                        <jsp:include page="side_bar.jsp"/>
                        <!-- [ navigation menu ] end -->

                        <!--main Content Page -->
                        <%
                            if ("new_chart_of_account".equals(request.getParameter("request"))) {
                        %>  
                        <jsp:include page="views/new_chart_of_account.jsp"/> 
                        <%
                        } else if ("account_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/account_list.jsp"/>
                        <%                     } else if ("journal_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/journal_list.jsp"/>
                        <%                    } else if ("new_journal".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_journal.jsp"/>
                        <%                    } else if ("new_staff".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_staff.jsp"/>
                        <%                    } else if ("staff_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/staff_list.jsp"/>
                        <%                     } else if ("new_bank".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_bank.jsp"/>
                        <%                     } else if ("bank_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/bank_list.jsp"/>
                        <%                    } else if ("new_petty_cash".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_petty_cash.jsp"/>
                        <%                    } else if ("new_ecash".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_ecash.jsp"/>
                        <%                     } else if ("petty_cash_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/petty_cash_list.jsp"/>
                        <%                     } else if ("ecash_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/ecash_list.jsp"/>
                        <%                     } else if ("new_supplier".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_supplier.jsp"/>
                        <%                     } else if ("supplier_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/supplier_list.jsp"/>
                        <%                    } else if ("new_customer".equals(request.getParameter("request"))) {
                        %>
                        <jsp:include page="views/new_customer.jsp"/>
                        <%
                        } else if ("customer_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/customer_list.jsp"/>
                        <%                     } else if ("new_branch".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/new_branch.jsp"/>
                        <%                     } else if ("branch_list".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/branch_list.jsp"/>
                        <%                     } else if ("user_category".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/user_category.jsp"/>
                        <%                    } else if ("user_unit".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/user_unit.jsp"/>
                        <%                    } else if ("finance_book".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/finance_book.jsp"/>
                        <%                     } else if ("finance_book_section".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/finance_book.jsp"/>
                        <%                     } else if ("fiscal_year".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/fiscal_year.jsp"/>
                        <%                    } else if ("finance_main_account".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/main_account.jsp"/>
                        <%                     } else if ("finance_book_sub_section".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/finance_book_sub_section.jsp"/>
                        <%                    } else if ("income_statement".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/report_income_statement.jsp"/>
                        <%                    } else if ("report_chart_of_account".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/report_chart_of_account.jsp"/>
                        <%                    } else if ("report_journal_entries".equals(request.getParameter("request"))) {

                        %>
                        <jsp:include page="views/report_journal_entries.jsp"/>
                        <%                    
                             } else if ("balance_sheet".equals(request.getParameter("request"))) {
                        %>
                        <jsp:include page="views/report_balance_sheet.jsp"/>
                        <%               
                        
                            } else {
                        %>
                        <jsp:include page="views/home.jsp"/>
                        <%
                            }
                        %>

                        <!--main Content Page End-->

                        <!-- [ style Customizer ] start -->
                        <div id="styleSelector">
                        </div>
                        <!-- [ style Customizer ] end -->
                    </div>
                </div>
        </div>
    </div>
   <jsp:include page="footer.jsp"/>

        <!-- Switch component js -->
        <script type="text/javascript" src="files/bower_components/switchery/js/switchery.min.js"></script>
        <!-- Tags js -->

        <script src="cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.10.4/typeahead.bundle.min.js"></script>
        <!-- Max-length js -->
        <script type="text/javascript" src="files/bower_components/bootstrap-maxlength/js/bootstrap-maxlength.js"></script>
        <!-- Custom js -->
        <script type="text/javascript" src="files/assets/pages/advance-elements/swithces.js"></script>
        <!-- data-table js -->

        <!-- sweet alert js -->
        <script type="text/javascript" src="files/bower_components/sweetalert/js/sweetalert.min.js"></script>
        <script type="text/javascript" src="files/assets/js/modal.js"></script>

        <!-- modalEffects js nifty modal window effects -->

        <script src="../files/bower_components/moment/js/moment.min.js" type="text/javascript"></script>
        <script src="../files/bower_components/bootstrap-daterangepicker/js/daterangepicker.js" type="text/javascript"></script>

        <!-- Required Jquery -->
        <script data-cfasync="false" src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script type="text/javascript" src="files/bower_components/jquery/js/jquery.min.js"></script>
        <script type="text/javascript" src="files/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="files/bower_components/popper.js/js/popper.min.js"></script>
        <script type="text/javascript" src="files/bower_components/bootstrap/js/bootstrap.min.js"></script>

        <!-- waves js -->

        <!-- jquery slimscroll js -->


        <!-- Custom js -->
        <script type="text/javascript" src="files/assets/js/pcoded.min.js"></script>
        <script type="text/javascript" src="files/assets/js/vertical/vertical-layout.min.js"></script>
        <script type="text/javascript" src="files/assets/pages/dashboard/custom-dashboard.min.js"></script>
        <script type="text/javascript" src="files/assets/js/script.min.js"></script>
        <script type="text/javascript" src="files/assets/js/script.js"></script>
        <script type="text/javascript" src="files/assets/pages/data-table/js/data-table-custom.js"></script> 
        <script type="text/javascript" src="files/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>

        <!-- notification js -->
        <script type="text/javascript" src="files/assets/js/bootstrap-growl.min.js"></script> 
    

    </body>


</html>
