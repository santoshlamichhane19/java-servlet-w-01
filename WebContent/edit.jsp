<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="headlayout.jsp" %>
<%@ include file="sidebar.jsp" %>

<div id="edit_post" class="container-fluid shadow m-2 ">
	<div class="card-title text-center text-warning bg-dark mb-3 m-3 p-1 shadow-sm rounded">
		<strong style="font-size: 30px;">
			<i class="fa fa-pencil-square fa-lg text-warning m-2"></i>
			Edit Defect</strong>
 	</div>
 	
 	<div class="row justify-content-center mb-4">
    <div class="col card m-4 p-2 shadow text-dark ">
        <form action="create" method="post">
             <c:if test="${!empty bugEdit}"> 
         
		            <div class="form-group m-3">
						<label class="font-weight-bold">ID</label>
		                <input type="text" class="col-md-4 form-control" name="bugID" value="${bugEdit.bugID}" readonly>
		            </div>
		
		            <div class="form-group m-3 ">
		                <label class="font-weight-bold">Summary</label>
		                <input type="text" class="form-control" name="bugSummary" value="${bugEdit.summary}">
		            </div>
		
		            <div class="form-row m-3">
		                <div class="col-md-4 form-group">
		                    <label class="font-weight-bold text-danger">Priority</label>
		                    <select class="form-control" name="bugPriority">
		                        <option value="High" ${bugEdit.priority=='High' ?'selected':''}>High</option>
		                        <option value="Medium" ${bugEdit.priority=='Medium' ?'selected':''}>Medium</option>
		                        <option value="Low" ${bugEdit.priority=='Low' ?'selected':''}>Low</option>
		                    </select>
		                </div>
		
		                <div class="col-md-4 form-group">
		                    <label class="font-weight-bold text-danger">Severity</label>
		                    <select class="form-control" name="bugSeverity">
		                        <option value="High" ${bugEdit.severity=='High' ? 'selected' :''}>High</option>
		                        <option value="Medium" ${bugEdit.severity=='Medium' ? 'selected' :''}>Medium</option>
		                        <option value="Low" ${bugEdit.severity=='Low' ? 'selected' :''}>Low</option>
		                    </select>
		                </div>
		
		            </div>
		
		            <div class="form-group m-3">
		                <label class="font-weight-bold">Description</label>
		                <textarea class="form-control" name="bugDescription">${bugEdit.description}</textarea>
		            </div>
		
		            <div class="form-row m-3">
		                <div class="col-md-4 form-group">
		                    <label class="font-weight-bold">Created By</label>
		                    <input class="form-control" type="text" name="createBy" value="${bugEdit.createBy}" readonly>
		                </div>
		
		                <div class="col-md-4 form-group">
		                    <label class="font-weight-bold">Status</label>
		                    <select class="form-control" name="bugStatus">
		                        <option value="New" disabled>New</option>
		                        <option value="In Process">In Process</option>
		                        <option value="Completed">Completed</option>
		                    </select>
		                </div>
		            </div>
		            <div class="form-group m-3 ">
		                <label class="font-weight-bold">Summary</label>
		                <div class="input-group">
		                    <select class="form-control col-sm-3" name="whoCommented" required>
		                        <option>Select User</option>
		                        <option>${userInfo.username}</option>
		                    </select>
		                    <input type="text" class="form-control" name="bugComment" placeholder="Comments">
		                </div>
		
		            </div>
            
            </c:if>
            <div class="form-group">
                <button style="display:block; margin: 0 auto;"
                    class="col-sm-3 form-control btn btn-dark text-warning btn-sm">Save</button>
            </div>
        </form>
    </div>
</div>
                
</div>
            
<%@ include file="footlayout.jsp" %>