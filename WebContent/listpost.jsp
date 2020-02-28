<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%@ include file="headlayout.jsp" %>
<%@ include file="sidebar.jsp" %>

<div id="user_profile" class="container-fluid shadow m-2 ">
                <!-- List Post -->
                <!-- Main Part 1-->
                <div class="card-title text-center text-warning bg-dark mb-3 m-3 p-1 shadow-sm rounded"> <strong
                        style="font-size: 30px;"><i class="fa fa-tasks m-2 text-warning"></i>List Defects</strong> </div>
                <div class="row justify-content-around p-4 mb-4">
                    <div class="col-sm-3">
                        <div class="card bg-danger text-light text-center">
                            <div class="card-header">
                                <h5>
                                    <strong>High Priority</strong>
                                </h5>
                            </div>
                            <div class="card-body">
                                <p style="font-size:40px;"> 20 </p>
                                <p class="border-top border-dark text-center"> High Priority Defects </p>
                            </div>
                            <div class="card-footer"> <a id="user" class="btn btn-dark btn-block shadow-sm p-2">Show Defects</a> </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card bg-warning text-dark text-center">
                            <div class="card-header">
                                <h5>
                                    <strong>Medium Priority Defects</strong>
                                </h5>
                            </div>
                            <div class="card-body">
                                <p style="font-size:40px;"> 20 </p>
                                <p class="border-top border-dark text-center text-dark">Medium Priority Defects</p>
                            </div>
                            <div class="card-footer"> <a class="btn btn-dark btn-block shadow-sm p-2 text-light">Show Defects</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card bg-info text-light text-center">
                            <div class="card-header">
                                <h5>
                                    <strong>Low Priority Defects</strong>
                                </h5>
                            </div>
                            <div class="card-body">
                                <p style="font-size:40px;"> 20 </p>
                                <p class="border-top border-dark text-center">Low Priority Defects</p>
                            </div>
                            <div class="card-footer"> <a class="btn btn-dark btn-block shadow-sm p-2 text-light">Show Defects</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-3">
                        <div class="card bg-info text-light text-center">
                            <div class="card-header">
                                <h5>
                                    <strong>Completed</strong>
                                </h5>
                            </div>
                            <div class="card-body">
                                <p style="font-size:40px;"> 20 </p>
                                <p class="border-top border-dark text-center">Completed Defects</p>
                            </div>
                            <div class="card-footer"> <a class="btn btn-dark btn-block shadow-sm p-2 text-light">Show Defects</a>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div style="margin-top:30px" class="container-fluid shadow ">
                    <div class="row">
                    <c:if test="${!empty bugTbl}">
                    
                        <table id="post_table_info" class="table table-striped m-4 p-2">
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
                                    <td>${bugData.bugID}</td>
                                    <td>${bugData.severity }</td>
                                    <td>${bugData.status}</td>
                                    <td>${bugData.summary}</td>
                                    <td>${bugData.priority}</td>
                                    <td>
                                        <i class="fa fa-edit fa-lg text-info"></i>
                                        <a class="btn btn-sm btn-info mr-3" href="edit.jsp">Edit</a>
                                        <i class="fa fa-trash fa-lg ml-2 text-danger"></i>
                                        <a class="btn btn-sm btn-danger mr-4" href="#">Delete</a>
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