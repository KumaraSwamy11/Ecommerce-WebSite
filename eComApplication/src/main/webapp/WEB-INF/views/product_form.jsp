<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Add/Edit Product</title>
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
						<p class="fs-4 text-center">Add/Edit Product</p>
						
						
						
    <form method="post" action="${product.id != null ? '/products/edit/' + product.id : '/products/add'}">
                            <div class="mb-3">
								<label class="form-label">Product Name</label> <input required
									type="text" name="name" value="${product.name}" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Product Description</label> <input required
									type="text" name="description" value="${product.description}" class="form-control">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Product Price</label> <input required
									type="text" name="price" value="${product.price}" class="form-control">
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



    