
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Admin login</title>

<%@include file="component/allcss.jsp" %>


<style type="text/css">
.paint-card
{
box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
   

<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Change Admin Password</p>
						
						
						<form action="/admin/changePassword" method="post">
							<div class="mb-3">
								<label class="form-label">User Name</label> <input required
									name="username" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">New Password</label> <input required
									name="newPassword" type="password" class="form-control">
							</div>
							<button type="submit" class="btn bg-primary text-white col-md-12">Change Password</button>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
    
    
    
    
</body>
</html>

