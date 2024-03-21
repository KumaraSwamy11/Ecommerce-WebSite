
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signup page</title>

<%@include file="component/allcss.jsp" %>

<style type="text/css">
.paint-card
{
box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>


<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Register</p>
						
						<form action="/user/register" method="post">
						<div class="mb-3">
								<label class="form-label">First Name</label> <input required
									name="firstname" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">last Name</label> <input required
									name="lastname" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="emailid" type="email" class="form-control">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Mobile Number</label> <input required
									name="mobileno" type="number" class="form-control">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Street</label> <input required
									name="street" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">city</label> <input required
									name="city" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Pin Code</label> <input required
									name="pincode" type="number" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Username</label> <input required
									name="username" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Register</button>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>






</body>
</html>