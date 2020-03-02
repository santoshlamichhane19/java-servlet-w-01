<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headlayout.jsp" %>



	<div class="container">
		<div class="row justify-content-between">
		<div class="col-sm-4 card m-4 shadow rounded bg-warning align-items-center">
			
			<form class="form-group m-2" method="post" action="login">
			<div style="font-size: 20px;"class="card-title text-center text-dark border-bottom border-info"> 
				
				<strong>LOGIN</strong>
			</div>
			
				<div class="input-group">
					<i class="fa fa-user fa-2x text-dark m-2 p-1"></i>
					<input class="form-control m-2 p-2 shadow rounded" type="text" name="username" placeholder="Enter Username">
					
				</div>
				
				<div class="input-group">
					<i class="fa fa-key fa-lg text-dark m-2 p-1"></i>
					<input class="form-control m-2 p-2 shadow rounded" type="password" name="password" placeholder="Enter Password">
					
				</div>
				
				
				<input class="btn btn-dark shadow rounded m-4"type="submit" value="Login">
				
			</form>
			<c:if test="${!empty msg }">
				<span syle="display:hidden;"class="alert alert-info">${msg}</span>
			</c:if>
		</div>
		
			<div class="col-sm-4 card m-4 shadow rounded bg-warning">
			<form class="form-group m-2" method="post" action="register">
			<div style="font-size: 20px;"class="card-title text-center text-dark border-bottom border-info"> 
				
				<strong>REGISTER</strong>
			</div>
				<input class="form-control m-2 p-2 shadow rounded" type="text" name="username" placeholder="Enter Username">
				<input class="form-control m-2 p-2 shadow rounded" type="password" name="password" placeholder="Enter Password">
				
				<select class="form-control m-2 p-2 shadow rounded"  name="user_type">
					<option value="Admin">Admin</option>
					<option value="User">User</option>
				</select>
			
				<button class="btn btn-dark btn-block shadow rounded mt-2">Register</button>
			</form>
		</div>
		
		
		</div>
	
	</div>


<%@ include file="footlayout.jsp" %>