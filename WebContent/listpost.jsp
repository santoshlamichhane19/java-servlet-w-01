<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%@ include file="headlayout.jsp" %>
<%@ include file="sidebar.jsp" %>

<div id="user_profile" class="container-fluid shadow m-2 ">
               
	                <div class="card-title text-center text-warning bg-dark mb-3 m-3 p-1 shadow-sm rounded"> <strong
	                        style="font-size: 30px;"><i class="fa fa-tasks m-2 text-warning"></i>List Defects</strong> </div>
	                <div class="row p-4 mb-4 justify-contents-around text-light m-auto shadow">
	                   
	                    	<a type="button" class="btn btn-primary m-2">
								  Total Defects <span class="badge badge-light" >${totalBugCount}</span>
							</a>                   	
	                   		 <a type="button" class="btn btn-danger m-2">
								  High Priority <span class="badge badge-light">${totalHighCount}</span>
							</a> 
						
						 	<a type="button" class="btn btn-warning m-2" >
								  Medium Priority <span class="badge badge-light">${totalMediumCount}</span>
							</a> 
						
							 <a type="button" class="btn btn-info m-2" >
							  Low Priority <span class="badge badge-light">${totalLowCount}</span>
							</a> 
						
							 <a type="button" class="btn btn-info m-2" >
							  New Defects <span class="badge badge-light">${totalNewCount}</span>
							</a> 
						 	<a type="button" class="btn btn-secondary m-2" >
							  In Progress <span class="badge badge-light">${totalInpCount}</span>
							</a>
							<a type="button" class="btn btn-primary m-2">
								  Completed <span class="badge badge-light">${totalCompCount}</span>
							</a> 
	                 
	                    
	                </div>
              
                <c:if test="${!empty noRecords}">
                <div class="col-sm-4 m-auto mt-4 card-title text-center text-warning bg-dark shadow rounded"> <strong><i class="fa fa-clone fa-lg text-warning m-2"></i>${noRecords}</strong>
                </div>
               </c:if>
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