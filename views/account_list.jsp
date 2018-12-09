<style>
    .table tr {
    cursor: pointer;
}
.hiddenRow {
    padding: 0 4px !important;
    background-color: #eeeeee;
    font-size: 13px;
}

//customized Css
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
                    <a class="nav-link active" data-toggle="tab" href="#home7" role="tab" style="font-color: #0000"><i class="fa fa-gg"></i> Balanace Sheet</a>
                    <div class="slide"></div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#profile7" role="tab"><i class="icofont icofont-ui-user "></i> Income Statement</a>
                    <div class="slide"></div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#messages7" role="tab"><i class="icofont icofont-ui-message"></i> Chart Of Account</a>
                    <div class="slide"></div>
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
                                <tr>
                                    <th scope="row">100124311</th>
                                    <td>Salary</td>
                                    <td>200,000,000</td>
                                    <td>Credit</td>
                                    <td>                                        
                                        <a href="#!" title="View" class="waves-effect md-trigger" data-modal="modal-12"><i class="icon feather icon-eye f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Update" data-toggle="modal" data-target="#large-Modal" ><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">100124412</th>
                                    <td>Expenses</td>
                                    <td>300,000,000</td>
                                    <td>Debit</td>
                                     <td>
                                        <a href="#!" title="View"><i class="icon feather icon-eye f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1001245113</th>
                                    <td>Loan</td>
                                    <td>122,332,000</td>
                                    <td>Credit</td>
                                     <td>
                                        <a href="#!" title="View"><i class="icon feather icon-eye f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
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
                <div class="tab-pane" id="messages7" role="tabpanel">
                    <p class="m-0">3. This is Photoshop's version of Lorem IpThis is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean mas Cum sociis natoque penatibus et magnis dis.....</p>
                </div>
            </div>
       </div>

    </div>
</div>
    
<div class="md-modal md-effect-1" id="modal-12">
    <div class="md-content">
        <h3><span class="text-default text-center">Account Detail</span></h3>
        <div>
             <div class="table-responsive dt-responsive">
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
                            <th scope="row">100124311</th>
                            <td>Salary</td>
                            <td>200,000,000</td>
                            <td>Credit</td>
                           
                        </tr>
                        <tr>
                            <th scope="row">1001244112</th>
                            <td>Expenses</td>
                            <td>300,000,000</td>
                            <td>Debit</td>
                        </tr>
                        <tr>
                            <th scope="row">1001245113</th>
                            <td>Loan</td>
                            <td>122,332,000</td>
                            <td>Credit</td>
                        </tr>
                    </tbody>
                </table>
                    </div>   
            <button type="button" class="btn btn-danger btn-mini waves-effect md-close pull-right">Close</button>
        </div>
    </div>
</div>

<!--    
<button type="button" class="btn btn-primary waves-effect" data-toggle="modal" data-target="#large-Modal">Large</button> -->
  
<div class="modal fade" id="large-Modal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Modal title</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5>Default Modal</h5>
                <p>This is Photoshop's version of Lorem IpThis is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
            </div>
            <div class="modal-footer">
                  <button class="btn btn-danger btn-sm "  type="button" data-dismiss="modal">Cancel</button>
                 <button type="submit" class="btn btn-primary btn-sm" style="margin-left: 75%;">Save</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $('.accordian-body').on('show.bs.collapse', function () {
    $(this).closest("table")
        .find(".collapse.in")
        .not(this)
        .collapse('toggle')
})
</script>
    