<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <title>Finance-Management-System</title>    
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    
    <!-- Favicon icon -->
    <link rel="icon" href="https://colorlib.com//polygon/admindek/files/assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Quicksand:500,700" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="files/bower_components/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="files/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- feather icon -->
    <link rel="stylesheet" type="text/css" href="files/assets/icon/feather/css/feather.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="files/assets/css/font-awesome-n.min.css">
    <!-- Chartlist chart css -->
    <link rel="stylesheet" href="files/bower_components/chartist/css/chartist.css" type="text/css" media="all">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="files/assets/css/widget.css">
    
     <!-- sweet alert framework -->
    <link rel="stylesheet" type="text/css" href="files/bower_components/sweetalert/css/sweetalert.css">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="files/assets/icon/themify-icons/themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="files/assets/icon/icofont/css/icofont.css">
    <!-- font awesome -->
    <link rel="stylesheet" type="text/css" href="files/assets/icon/font-awesome/css/font-awesome.min.css">
    <!-- Switch component css -->
    <link rel="stylesheet" type="text/css" href="files/bower_components/switchery/css/switchery.min.css">
    <!-- Tags css -->
    <link rel="stylesheet" type="text/css" href="files/bower_components/bootstrap-tagsinput/css/bootstrap-tagsinput.css" />
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="files/assets/css/pages.css">
     <!-- Data Table Css -->
    <link rel="stylesheet" type="text/css" href="files/bower_components/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="files/assets/pages/data-table/css/buttons.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="files/bower_components/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css">
       <!-- animation nifty modal window effects css -->
    <link rel="stylesheet" type="text/css" href="files/assets/css/component.css">
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
                
        function showAc(global_acc) {
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
                  xmlhttp.open("GET","views/fill_combo.jsp?key="+global_acc,true);
                  xmlhttp.send();
                 
                }
                // journal
                
                //get specific accounts
                
        function showSubAcc(idsubaccount)
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
                  xmlhttp.open("GET","views/fill_select_combo.jsp?key="+idsubaccount,true);
                  xmlhttp.send();
                }
                
                function upshowBookSection(idBook)
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
                      document.getElementById("up_finance_book_section_id").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/get_book_section.jsp?key="+idBook,true);
                  xmlhttp.send();    
                }
                function upshowSubBookSection(idBookSection)
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
                      document.getElementById("up_finance_book_sub_section_id").innerHTML=this.responseText;
                    }
                  };
                  xmlhttp.open("GET","views/get_book_sub_section.jsp?key="+idBookSection,true);
                  xmlhttp.send();    
                }
                
function showSubSubAcc(idSubSubAcc)
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
                  xmlhttp.open("GET","views/fill_select2_combo.jsp?key="+idSubSubAcc,true);
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
                  xmlhttp.open("GET","views/fill_select3_combo.jsp",true);
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
                  xmlhttp.open("GET","views/fill_select4_combo.jsp",true);
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
                  xmlhttp.open("GET","views/fill_select5_combo.jsp",true);
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
                  xmlhttp.open("GET","views/fill_select6_combo.jsp",true);
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
                        }
                     else if ("account_list".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/account_list.jsp"/>
                     <%                
                        }
                     else if ("journal_list".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/journal_list.jsp"/>
                    <%                
                        }
                     else if ("new_journal".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/new_journal.jsp"/>
                    <%                
                        }
                     else if ("new_staff".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/new_staff.jsp"/>
                    <%                
                        }
                     else if ("staff_list".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/staff_list.jsp"/>
                     <%                
                        }
                     else if ("new_bank".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/new_bank.jsp"/>
                     <%                
                        }
                     else if ("bank_list".equals(request.getParameter("request"))) { 

                    %>
                    <jsp:include page="views/bank_list.jsp"/>
                    <%                
                        }
                     else if ("new_petty_cash".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/new_petty_cash.jsp"/>
                    <%                
                        }
                     else if ("new_ecash".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/new_ecash.jsp"/>
                     <%                
                        }
                     else if ("petty_cash_list".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/petty_cash_list.jsp"/>
                     <%                
                        }
                     else if ("ecash_list".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/ecash_list.jsp"/>
                     <%                
                        }
                     else if ("new_supplier".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/new_supplier.jsp"/>
                     <%                
                        }
                     else if ("supplier_list".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/supplier_list.jsp"/>
                      <%                
                        }
                     else if ("new_customer".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/new_customer.jsp"/>
                    <%                
                        }
                     else if ("customer_list".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/customer_list.jsp"/>
                     <%                
                        }
                     else if ("new_branch".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/new_branch.jsp"/>
                     <%                
                        }
                     else if ("branch_list".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/branch_list.jsp"/>
                     <%                
                        }
                     else if ("user_category".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/user_category.jsp"/>
                    <%                
                        }
                     else if ("user_unit".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/user_unit.jsp"/>
                     <%                
                        }
                     else if ("finance_book".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/finance_book.jsp"/>
                     <%                
                        
                    }
                     else if ("finance_main_account".equals(request.getParameter("request"))) { 

                    %>
                    <jsp:include page="views/main_account.jsp"/>
                     <%                
                        }
                     else if ("fiscal_year".equals(request.getParameter("request"))) {

                    %>
                    <jsp:include page="views/fiscal_year.jsp"/>
                     <%                
                        }
                     else if ("finance_book_section".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/finance_book_section.jsp"/>
                     <%                
                         }
                    
                     else if ("finance_book_sub_section".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/finance_book_sub_section.jsp"/>
                    <%                
                        }
                     else if ("income_statement".equals(request.getParameter("request"))) { 

                    %>
                    <jsp:include page="views/report_income_statement.jsp"/>
                    <%                
                        }
                     else if ("report_chart_of_account".equals(request.getParameter("request"))) { 

                    %>
                    <jsp:include page="views/report_chart_of_account.jsp"/>
                    <%                
                        }
                     else if ("report_journal_entries".equals(request.getParameter("request"))) { 

                    %>
                    <jsp:include page="views/report_journal_entries.jsp"/>
                     <%                
                        }
                     else if ("balance_sheet".equals(request.getParameter("request"))) { 

                    %>
                       <jsp:include page="views/report_balance_sheet.jsp"/>
                    <%
                            } 
                      
                     else  {
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


<!-- modernizr js -->
<script type="text/javascript" src="files/bower_components/modernizr/js/modernizr.js"></script>
<script type="text/javascript" src="files/bower_components/modernizr/js/css-scrollbars.js"></script>
<!-- Switch component js -->
<script type="text/javascript" src="files/bower_components/switchery/js/switchery.min.js"></script>
<!-- Tags js -->
<script type="text/javascript" src="files/bower_components/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>
<script src="cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.10.4/typeahead.bundle.min.js"></script>
<!-- Max-length js -->
<script type="text/javascript" src="files/bower_components/bootstrap-maxlength/js/bootstrap-maxlength.js"></script>
<!-- Custom js -->
<script type="text/javascript" src="files/assets/pages/advance-elements/swithces.js"></script>
  <!-- data-table js -->
    <script src="files/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="files/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="files/assets/pages/data-table/js/jszip.min.js"></script>
    <script src="files/assets/pages/data-table/js/pdfmake.min.js"></script>
    <script src="files/assets/pages/data-table/js/vfs_fonts.js"></script>
    <script src="files/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="files/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="files/bower_components/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="files/bower_components/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="files/bower_components/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
<script src="files/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- sweet alert js -->
<script type="text/javascript" src="files/bower_components/sweetalert/js/sweetalert.min.js"></script>
<script type="text/javascript" src="files/assets/js/modal.js"></script>
<!-- modalEffects js nifty modal window effects -->
<script src="files/assets/js/classie.js"></script>
<script type="text/javascript" src="files/assets/js/modalEffects.js"></script>
<script src="files/assets/js/pcoded.min.js"></script>
<script src="files/assets/js/vertical/vertical-layout.min.js"></script>
<script src="files/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>                     
    <!-- Required Jquery -->
    <script data-cfasync="false" src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script type="text/javascript" src="files/bower_components/jquery/js/jquery.min.js"></script>
    <script type="text/javascript" src="files/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="files/bower_components/popper.js/js/popper.min.js"></script>
    <script type="text/javascript" src="files/bower_components/bootstrap/js/bootstrap.min.js"></script>
    <!-- waves js -->
    <script src="files/assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="files/bower_components/jquery-slimscroll/js/jquery.slimscroll.js"></script>
    <!-- Float Chart js -->
    <script src="files/assets/pages/chart/float/jquery.flot.js"></script>
    <script src="files/assets/pages/chart/float/jquery.flot.categories.js"></script>
    <script src="files/assets/pages/chart/float/curvedLines.js"></script>
    <script src="files/assets/pages/chart/float/jquery.flot.tooltip.min.js"></script>
    <!-- Chartlist charts -->
    <script src="files/bower_components/chartist/js/chartist.js"></script>
    <!-- amchart js -->
    <script src="files/assets/pages/widget/amchart/amcharts.js"></script>
    <script src="files/assets/pages/widget/amchart/serial.js"></script>
    <script src="files/assets/pages/widget/amchart/light.js"></script>
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
   
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

<!-- General Javascript Function  -->

</body>


</html>
