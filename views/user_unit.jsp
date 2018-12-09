<%-- 
    Document   : user_category
    Created on : 9 déc. 2018, 18:06:41
    Author     : Espoir SB
--%>

<div class="pcoded-content">
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-8 col-lg-offset-2">               
                    <div class="page-header-title">
                        <a data-toggle="modal" data-target="#user_unit">
                        <i class="feather icon-user-plus bg-c-blue"></i>
                         </a>
                        <div class="d-inline">
                            <h5>User Unit</h5>
                        </div>
                       
                    </div>             
              
            </div>

             <div class="col-lg-4">
                <div class="page-header-breadcrumb">
                    <ul class=" breadcrumb breadcrumb-title">
                        <li class="breadcrumb-item">
                            <a href="index.jsp?request=home" title="Home"><i class="feather icon-home"></i></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#!" title="Cash Management"><i class="feather icon-map"></i></a>
                        </li>
                        <li class="breadcrumb-item"><a href="index.jsp?request=bank_list" title="Bank List">User</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#!">Unit </a>
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
                    <h5>List of User Unit</h5>
                    
                </div>
                <div class="card-block">
                    <div class="dt-responsive table-responsive">
                        <table id="order-table" class="table table-striped table-bordered nowrap table-xs">
                            <thead>
                                <tr>
                                    <th>Code </th>
                                    <th>Name</th>                                                                  
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>154288</td>                                    
                                    <td>IT </td>                                   
                                     <td>
                                        <a href="#!" title="Update" data-toggle="modal" data-target="#update_user_unit"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>154888</td>                                  
                                    <td>Logistician</td>
                                     <td>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                     <td>12788</td>                               
                                    <td>Accountant</td>
                                   <td>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>157888</td>                               
                                    <td>Admin</td>
                                   <td>
                                        <a href="#!" title="Update"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-blue"></i></a>
                                        <a href="#!" title="Delete"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a>
                                    </td>
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

<!-- New User category Modal-->
<div class="modal fade" tabindex="-1" id="user_unit" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">New User Unit</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
           <form >
             <div class="form-group row">
                  <label class="col-sm-3 col-form-label">Name </label>
                  <div class="col-sm-9">
                      <input class="form-control form-control-sm" name="category_name" required="required">
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
<div class="modal fade" tabindex="-1" id="update_user_unit" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update User Unit</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
           <form >
             <div class="form-group row">
                  <label class="col-sm-3 col-form-label">Name </label>
                  <div class="col-sm-9">
                      <input class="form-control form-control-sm" name="category_name" value="IT" required="required">
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