
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Add/Edit Category</title>
<jsp:include page="component/allcss.jsp" />  
    
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
						<p class="fs-4 text-center">Add/Edit Category </p>
						
						
						
    <form method="post" action="${category.id != null ? '/categories/edit/' + category.id : '/categories/add'}">
                          <div class="mb-3">
								<label class="form-label"> Category Name</label> <input required
									type="text" name="name" value="${category.name}" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Category Description</label> <input required
									type="text" name="description" value="${category.description}" class="form-control">
							</div>
							
							<button type="submit" class="btn bg-primary text-white col-md-12">Save</button>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>



    
