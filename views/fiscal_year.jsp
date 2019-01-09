<%-- 
    Document   : user_category
    Created on : 9 déc. 2018, 18:06:41
    Author     : Espoir SB
--%>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<div class="pcoded-content">
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-8 col-lg-offset-2">               
                    <div class="page-header-title">
                        <a data-toggle="modal" data-target="#finance_book">
                        <i class="feather icon-book bg-c-blue"></i>
                         </a>
                        <div class="d-inline">
                            <h5>Fiscal Year</h5>
                            <span class="text-default">Click to Add a New Fiscal Year</span>
                        </div>
                       
                    </div>             
              
            </div>

             <div class="col-lg-4">
                <div class="page-header-breadcrumb">
                    <ul class=" breadcrumb breadcrumb-title">
                        <li class="breadcrumb-item">
                            <a href="index.jsp?request=home" title="Home"><i class="feather icon-home"></i></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#!" title="Setting"><i class="feather icon-settings"></i></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#!">Fiscal Year</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="pcoded-inner-content">
     <div class="card">
       <div class="card-block"> 
              <!-- Default ordering table start -->
            <div class="card">
                <div class="card-header">
                    <h5>List of Fiscal Year</h5>
                    
                </div>
                <div class="card-block">
                    <div class="dt-responsive table-responsive">
                        <table id="order-table" class="table table-striped table-bordered nowrap table-xs">
                            <thead>
                                <tr>
                                    <th>Code </th>
                                    <th>Fiscal Year</th>   
                                    <th> Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>154288</td>                                    
                                    <td>2017-2018</td>    
                                    <td><label class="badge badge-success">Finished</label></td>
                                   
                                </tr>
                                
                                <tr>
                                    <td>154888</td>                                  
                                    <td>2016-2017</td>
                                    <td><label class="badge badge-success">Finished</label></td>
                                   
                                </tr>
                                <tr>
                                     <td>12788</td>                               
                                    <td>2017-2018</td>
                                    <td><label class="badge badge-success">Finished</label></td>
                                  
                                </tr>
                                <tr>
                                    <td>157888</td>                               
                                    <td>2018-2019</td>
                                    <td><label class="badge badge-primary">Ongoing</label></td>
                                  
                                </tr>
                                                       
                            </tbody>
                          
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</div>

<!-- New Finance Book Modal-->
<div class="modal fade" tabindex="-1" id="finance_book" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">New Fiscal Year</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
           <form >
             <div class="form-group row">
                  <label class="col-sm-3 col-form-label">Fiscal year </label>
                  <div class="col-sm-9">
                      <input class="form-control form-control-sm" id="year" value="01/01/2019 - 01/15/2019" required="required">               
                  </div>
              </div> 
             <div class="form-group row">
                <label class="col-sm-3 col-form-label">Running</label>
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
        </form>
            </div>
            <div class="modal-footer">
                 <button class="btn btn-danger btn-sm"  type="button" data-dismiss="modal">Cancel</button>
                 <button type="submit" class="btn btn-primary btn-sm" style="margin-left: 75%;">Save</button>
            </div>
        </div>
    </div>
</div>

<!-- Edit User category Modal-->
<div class="modal fade" tabindex="-1" id="update_finance_book" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update Finance Book</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
           <form >
             <div class="form-group row">
                  <label class="col-sm-3 col-form-label">Name </label>
                  <div class="col-sm-9">
                      <input class="form-control form-control-sm" name="category_name" value="Construction" required="required">
                  </div>
              </div>             

        </form>
            </div>
            <div class="modal-footer">
                 <button class="btn btn-danger btn-sm"  type="button" data-dismiss="modal">Cancel</button>
                 <button type="submit" class="btn btn-primary btn-sm" style="margin-left: 75%;">Save</button>
            </div>
        </div>
    </div>
</div>



<script>
    
     $('#year').daterangepicker();
</script>