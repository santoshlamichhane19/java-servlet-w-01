<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%@ include file="headlayout.jsp" %>
<%@ include file="sidebar.jsp" %>

<div id="dashboard" class="container-fluid shadow m-2">
                <!-- Dashboard -->
                <!-- Main Part 1-->
                <div class="card-title text-center text-warning bg-dark mb-3 m-3 p-1 shadow-sm rounded"> <strong
                        style="font-size: 22px;"><i class="fa fa-clone fa-lg text-warning m-2"></i>Dashboard</strong>
                </div>
                <div class="row justify-content-around p-4 mb-4">
                    <div class="col-sm-4">
                        <div class="card bg-info text-light text-center">
                            <div class="card-header">
                                <h5>
                                    <strong>User</strong>
                                </h5>
                            </div>
                            <div class="card-body">
                                <p style="font-size:40px;"> 20 </p>
                                <p class="border-top border-dark text-center">Users </p>
                            </div>
                            <div class="card-footer"> <a id="user" class="btn btn-dark btn-block shadow-sm p-2">Show
                                    User List</a> </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card bg-info text-light text-center">
                            <div class="card-header">
                                <h5>
                                    <strong>Defect</strong>
                                </h5>
                            </div>
                            <div class="card-body">
                                <p style="font-size:40px;"> ${totalBugCount}</p>
                                <p class="border-top border-dark text-center"> New Defect</p>
                            </div>
                            <div class="card-footer"> <a class="btn btn-dark btn-block shadow-sm p-2">Show Defect List</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card bg-danger text-light text-center">
                            <div class="card-header">
                                <h5>
                                    <strong>High Priority</strong>
                                </h5>
                            </div>
                            <div class="card-body">
                                <p style="font-size:40px;"> 20 </p>
                                <p class="border-top border-dark text-center"> High Priority Defect</p>
                            </div>
                            <div class="card-footer"> <a class="btn btn-dark btn-block shadow-sm p-2">Show Defects</a>
                            </div>
                        </div>
                    </div>
                </div>
           		
           	   <div class="col-sm-4 m-auto card-title text-center text-warning bg-dark mb-3 m-3 p-1 shadow rounded"> <strong><i class="fa fa-clone fa-lg text-warning m-2"></i>Quick Actions</strong>
                </div>
           	
           
                <div style="margin-top:30px" class="container-fluid shadow ">
                    <div class="row">
                    <c:if test="${!empty bugTbl}">
                    
                        <table id="post_table_info" class="table table-bordered m-4 p-2">
                            <thead class="bg-dark text-light">
                                <tr>
                                    <th scope="col">Defect ID</th>
                                    <th scope="col">Severity</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Summary</th>
                                    <th scope="col">Priority</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody class="bg-light">
                            <c:forEach items="${bugTbl}" var="bugData">
                                <tr>
                                    <td scope="row">${bugData.bugID}</td>
                                    <td>${bugData.severity }</td>
                                    <td>${bugData.status}</td>
                                    <td>${bugData.summary}</td>
                                    <td>${bugData.priority}</td>
                                    <td>
                                        <i class="fa fa-edit fa-lg text-info"></i>
                                        	<a class="btn btn-sm btn-info mr-3" href="create?action=update_bug&id=${bugData.bugID}">Edit</a>
                                        <i class="fa fa-trash fa-lg ml-2 text-danger"></i>
                                        	<a class="btn btn-sm btn-danger mr-4" href="create?action=delete_bug&id=${bugData.bugID}">Delete</a>
                                    </td>
                                </tr>
                                </c:forEach>  
                            </tbody>
                        </table>
                      
                       </c:if>
                    </div>
                </div>
            </div>
            
<%@ include file="footlayout.jsp" %>