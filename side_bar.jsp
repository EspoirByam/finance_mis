<style>
  .custom-color  a {
        font-size: 13px !important;
        font-color: #fff !important;
        color: #fff !important;
    }
    .custom-color a:hover{
        color: #ed0000 !important;
        translation-value: all 1s linear;
    }  
 
    
</style>    
<nav class="pcoded-navbar">
            <div class="nav-list">
                <div class="pcoded-inner-navbar main-menu" >
                    <div class="pcoded-navigation-label">Main Menu</div>
                    <ul  class="pcoded-item pcoded-left-item custom-color">
                        <li class="pcoded-hasmenu pcoded-trigger" >
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="feather icon-pie-chart"></i></span>
                                <span class="pcoded-mtext"> Chart of Account</span>
                            </a>
                            <ul class="pcoded-submenu">
                                <li class="" id="chart">
                                    <a href="index.jsp?request=new_chart_of_account" class="waves-effect waves-dark"> 
                                        <span class="pcoded-micon"><i class="feather icon-plus"></i></span>
                                        <span class="pcoded-mtext"> New Account</span>
                                    </a>
                                </li>                                           
                                <li class="">
                                    <a href="index.jsp?request=account_list" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext" >List of Account</span>                                                   
                                    </a>
                                </li>
                            </ul>
                        </li>
                         <li class="pcoded-hasmenu ">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="feather icon-clipboard"></i></span>
                                <span class="pcoded-mtext">Journal</span>
                            </a>
                            <ul class="pcoded-submenu">
                                <li class="active">
                                    <a href="index.jsp?request=new_journal" class="waves-effect waves-dark">                                                    
                                        <span class="pcoded-mtext">New</span>
                                    </a>
                                </li>                                           
                                <li class="">
                                    <a href="index.jsp?request=journal_list" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">List of Account</span>                                                   
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="feather icon-map"></i></span>
                                <span class="pcoded-mtext">Cash Management</span>                                           
                            </a>
                            <ul class="pcoded-submenu">
                                <li class=" pcoded-hasmenu">
                                    <a href="#" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext"> Bank</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="index.jsp?request=new_bank" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext"> New</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="index.jsp?request=bank_list" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext"> List</span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                                <li class=" pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Petty cash</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="index.jsp?request=new_petty_cash" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">New</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="index.jsp?request=petty_cash_list" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">List</span>
                                            </a>
                                        </li>

                                    </ul>
                                </li> 
                                <li class=" pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">E-cash</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="index.jsp?request=new_ecash" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">New</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="index.jsp?request=ecash_list"  class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">List</span>
                                            </a>
                                        </li>

                                    </ul>
                                </li> 
                            </ul>
                        </li>
                          <li class="pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="feather icon-sidebar"></i></span>
                                <span class="pcoded-mtext">Acc Payable & Receiveble</span>

                            </a>
                            <ul class="pcoded-submenu">
                                <li class=" pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext"> Supplier</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="index.jsp?request=new_supplier" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext"> New</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="index.jsp?request=supplier_list" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">List</span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                                <li class=" pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Customer</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="index.jsp?request=new_customer" target="_blank" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">New</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="index.jsp?request=customer_list" target="_blank" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">List</span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>                                           
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu">
                            <a href="#" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="feather icon-home"></i></span>
                                <span class="pcoded-mtext">Branch Management</span>
                            </a>
                            <ul class="pcoded-submenu">
                                <li class="active">
                                    <a href="index.jsp?request=new_branch" class="waves-effect waves-dark">                                                    
                                        <span class="pcoded-mtext">New</span>
                                    </a>
                                </li>                                           
                                <li class="">
                                    <a href="index.jsp?request=branch_list" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">List of Branchs</span>                                                   
                                    </a>
                                </li>
                            </ul>
                        </li>
                          <li class="pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="feather icon-users"></i></span>
                                <span class="pcoded-mtext">User Management</span>

                            </a>
                            <ul class="pcoded-submenu">
                                <li class=" pcoded-hasmenu">
                                    <a href="#" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext"> Staff</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="index.jsp?request=new_staff" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext"> New</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="index.jsp?request=staff_list" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext"> List</span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                                <li class="">
                                    <a href="index.jsp?request=user_category" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Category</span>
                                    </a>
                                   
                                </li> 
                                <li class="">
                                    <a href="index.jsp?request=user_unit" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Unit</span>
                                    </a>
                                </li> 
                            </ul>
                        </li>
                           <li class="pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="feather icon-settings"></i></span>
                                <span class="pcoded-mtext">Settings</span>
                            </a>
                           
                            <ul class="pcoded-submenu">
                                <li class="">
                                    <a href="index.jsp?request=fiscal_year" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext"> Fiscal year</span>
                                    </a>                                  
                                </li>
                                <li class="">
                                    <a href="index.jsp?request=finance_book" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext"> Finance Book</span>
                                    </a>                                  
                                </li>
                                <li class="">
                                    <a href="index.jsp?request=finance_book_section" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Finance Book Section</span>
                                    </a>
                                </li> 
                                <li class="">
                                    <a href="index.jsp?request=finance_book_sub_section" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Finance Book Sub-Section</span>
                                    </a>
                                </li> 
                                <li class="">
                                    <a href="index.jsp?request=finance_main_account" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Main Account</span>
                                    </a>
                                </li> 
                            </ul>
                        </li>
                        
                           <li class="pcoded-hasmenu">
                            <a href="javascript:void(0)" class="waves-effect waves-dark">
                                <span class="pcoded-micon"><i class="feather icon-file-text"></i></span>
                                <span class="pcoded-mtext">Report</span>

                            </a>
                            <ul class="pcoded-submenu">
                                 <li class="">
                                    <a href="index.jsp?request=balance_sheet" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Balance Sheet</span>
                                    </a>
                                </li> 
                                <li class="">
                                    <a href="index.jsp?request=income_statement" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Income Statement</span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="index.jsp?request=report_journal_entries" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Journal</span>
                                    </a>
                                </li>
                               
                                <li class="">
                                    <a href="index.jsp?request=report_chart_of_account" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext"> Chart Of Account</span>
                                    </a>                                  
                                </li>
                                 
                                
                                
                            </ul>
                        </li> 
                    </ul>
                </div>
            </div>
        </nav>
