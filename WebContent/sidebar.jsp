<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
   <div class="wrapper d-flex flex-row h-100">
        <div class="bg-light text-light w-25 p-2 ">
            <!--Sidebar Menu -->
            <div class="d-flex border rounded h-100 mt-1 p-1 bg-dark">
                <ul class="navbar-nav">
                    <li class="nav-item ">
                        <a id="nav-dashboard" style="font-size:20px;" class="btn border-bottom m-2 text-warning"href="dashboard.jsp">
                            <strong>Dashboard</strong> </a>
                    </li>
                    <li class="nav-item"> <a id="list_post_info"
                            class="btn  btn-block border border-info m-4 bg-info text-light" href="listpost.jsp">List Defects</a> </li>
                    <li class="nav-item "> <a id="create_post_tab"
                            class="btn  btn-block border border-info m-4 bg-info text-light" href="create.jsp">Create Defect</a> </li>
                    <li class="nav-item "> <a id="edit_post_tab"
                            class="btn  btn-block border border-info m-4 bg-info text-light " href="edit.jsp">Edit Defect</a> </li>
                </ul>
            </div>
        </div>
        <!-- End Sidebar Menu -->
        <div class="d-flex flex-column w-75 bg-light m-3 align-items-center">
            <!-- Main Content Start -->
        
 