<%@ include file="headlayout.jsp" %>
<%@ include file="sidebar.jsp" %>

 <div id="create_post" class="container-fluid shadow m-2 ">
                <!-- List Post -->
                <!-- Main Part 1-->
                <div class="card-title text-center text-warning bg-dark mb-3 m-3 p-1 shadow-sm rounded"> <strong
                        style="font-size: 30px;"><i class="fa fa-pencil fa-lg text-warning m-2"></i>Create Defect</strong>
                </div>
                <div class="row justify-content-center mb-4">
                    <div class="col card m-4 p-2 shadow text-dark ">
                        <form method="post" action="#">
                            <div class="form-group m-3">
                                <label class="font-weight-bold">ID</label>
                                <input type="text" class="col-md-4 form-control" placeholder="Enter ID">
                            </div>

                            <div class="form-group m-3 ">
                                <label class="font-weight-bold">Summary</label>
                                <input type="text" class="form-control" placeholder="Give brief summary about the bug">
                            </div>

                            <div class="form-row m-3">
                                <div class="col-md-4 form-group">
                                    <label class="font-weight-bold text-danger">Priority</label>
                                    <select class="form-control">
                                        <option value="high">High</option>
                                        <option value="medium">Medium</option>
                                        <option value="low">Low</option>
                                    </select>
                                </div>

                                <div class="col-md-4 form-group">
                                    <label class="font-weight-bold text-danger">Severity</label>
                                    <select class="form-control">
                                        <option value="high">High</option>
                                        <option value="medium">Medium</option>
                                        <option value="low">Low</option>
                                    </select>
                                </div>

                            </div>

                            <div class="form-group m-3">
                                <label class="font-weight-bold">Description</label>
                                <textarea class="form-control"></textarea>
                            </div>

                            <div class="form-row m-3">
                                <div class="col-md-4 form-group">
                                    <label class="font-weight-bold">Created By</label>
                                    <input class="form-control" type="text" placeholder="Enter Username">
                                </div>

                                <div class="col-md-4 form-group">
                                    <label class="font-weight-bold">Status</label>
                                    <input class="form-control" type="text">
                                </div>

                            </div>

                            <div class="form-group">
                                <button style="display:block; margin: 0 auto;"
                                    class="col-sm-3 form-control btn btn-dark text-warning btn-sm">Create</button>
                            </div>

                        </form>
                    </div>




                </div>

            </div>

            <!--Create End -->

            <!--Edit Start -->
            
<%@ include file="footlayout.jsp" %>